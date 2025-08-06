import 'dart:io';

void main() {
  List<String> nomes = [];
  List<List<double>> notas = [];
  String? acao = "";

  print("   ___  _____   __   ___   _       ____  ____                                                        ");
  print("  /  _]/ ___/  /  ] /   \\ | |     /    ||    \\                                                       ");
  print(" /  [_(   \\_  /  / |     || |    |  o  ||  D  )                                                      ");
  print("|    _]\\__  |/  /  |  O  || |___ |     ||    /                                                       ");
  print("|   [_ /  \\ /   \\_ |     ||     ||  _  ||    \\                                                      ");
  print("|     |\\    \\     ||     ||     ||  |  ||  .  \\                                                      ");
  print("|_____| \\___|\\____| \\___/ |_____||__|__||__|\\_|                                                      ");
  print("                                                                                                     ");

  while (acao != 'sair') {
    print('Escolha uma ação: registrar, listar, sair');
    acao = stdin.readLineSync();

    switch (acao) {
      case 'registrar':
        registrarAluno(nomes, notas);
        break;
      case 'listar':
        listarAlunos(nomes, notas);
        break;
      case 'sair':
        print('Saindo...');
        break;
      default:
        print('Ação inválida.');
    }
  }
}

void registrarAluno(List<String> nomes, List<List<double>> notas) {
  print('Digite o nome do aluno:');
  String? nome = stdin.readLineSync();

  if (nome != null && nome.trim().isNotEmpty) {
    nomes.add(nome);
    List<double> notasAluno = [];

    while (true) {
      print('Digite uma nota para o aluno (ou "fim" para terminar):');
      String? entrada = stdin.readLineSync();

      if (entrada == 'fim') {
        break;
      } else if (entrada != null) {
        double? nota = double.tryParse(entrada);
        if (nota != null) {
          notasAluno.add(nota);
        } else {
          print('Valor inválido. Digite um número ou "fim".');
        }
      }
    }

    notas.add(notasAluno);
  } else {
    print('Nome inválido.');
    return registrarAluno(nomes, notas);
  }
}

double calcularMedia(List<double> notas) {
  if (notas.isEmpty) return 0.0; // evita divisão por zero
  double soma = 0;
  for (double nota in notas) {
    soma += nota;
  }
  return soma / notas.length;
}

void listarAlunos(List<String> nomes, List<List<double>> notas) {
  print('Lista de alunos e suas médias:');
  for (int i = 0; i < nomes.length; i++) {
    double media = calcularMedia(notas[i]);
    print('${nomes[i]}: ${media.toStringAsFixed(2)}');
  }
}