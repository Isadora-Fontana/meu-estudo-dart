/*
]import 'dart:io'; //"Meu código -completo"

void main(){
  List<String> categoria = <String>["eletronicos" , "alimentos", "vestuario", "livros"];


  print("Digite a categoria do produto (eletronicos, alimentos, vestuario, livros): ");
  String entrada = stdin.readLineSync()!;

  if(entrada != ""){
    if (categoria.contains(entrada)){
      print("Categoria válida: $entrada");
  } else{
      print("Categoria inválida");
  }
  }
}



import 'dart:io';

void main() {
  List<String> categorias = ['eletronicos', 'alimentos', 'vestuario', 'livros'];
  String? categoria;

  categoria = validaCategoria(categoria, categorias);

  print('Categoria válida: $categoria');
}

String? validaCategoria(String? categoria, List<String> categorias) {
  print('Digite a categoria do produto (eletronicos, alimentos, vestuario, livros):');
  categoria = stdin.readLineSync();
  if (categorias.contains(categoria)) {
    return categoria;
  } else {
    print('Categoria inválida. Tente novamente.');
    return validaCategoria(categoria, categorias);
  }
}



import 'dart:io';

void main(){
  List<String> tipos_arquivo = ['pdf', 'jpg', 'png', 'docx'];
  String? tipo_arquivo;

  tipo_arquivo = validaTipo(tipo_arquivo, tipos_arquivo);
  print("Formato válido: $tipo_arquivo");
}

String? validaTipo(String? tipo_arquivo, List<String> tipos_arquivo){
  print("Digite o formato do arquivo (pdf, jpg, png, docx): ");
  tipo_arquivo = stdin.readLineSync();
  if (tipos_arquivo.contains(tipo_arquivo)){
    return tipo_arquivo;
  } else{
    print("Formato de arquivo inválido. Tente novamente.");
    return validaTipo(tipo_arquivo, tipos_arquivo);
  }
}



import 'dart:io';

void main() {
  solicitarNumero();
}

void solicitarNumero() {
  print('Digite um número de 1 a 12 para saber o mês correspondente:');
  String? input = stdin.readLineSync();

  int numero;
  if (input == null) {
    print('Entrada inválida. Por favor, insira um número válido.');
    solicitarNumero();
    return;
  }

  numero = int.parse(input);

  String mes = obterMes(numero);
  print(mes);

  if (mes == 'Número inválido. Por favor, insira um número de 1 a 12.') {
    solicitarNumero();
  }
}

// Função que retorna o mês correspondente
String obterMes(int numero) {
  switch (numero) {
    case 1:
      return 'Janeiro';
    case 2:
      return 'Fevereiro';
    case 3:
      return 'Março';
    case 4:
      return 'Abril';
    case 5:
      return 'Maio';
    case 6:
      return 'Junho';
    case 7:
      return 'Julho';
    case 8:
      return 'Agosto';
    case 9:
      return 'Setembro';
    case 10:
      return 'Outubro';
    case 11:
      return 'Novembro';
    case 12:
      return 'Dezembro';
    default:
      return 'Número inválido. Por favor, insira um número de 1 a 12.';
  }
}




import 'dart:io'; 

void main(){
List<String> operacoes = ["deposito", "retirada", "transferencia", "pagamento"];
String? operacao;

operacao = validaOperacao(operacao, operacoes);

double? valor;

valor = validaValor(valor);
print("Operação escolhida: $operacao, Valor: $valor");
}

double? validaValor(double? valor) {
  print('Digite o valor da operação:');
  valor = double.tryParse(stdin.readLineSync()!);

  if (valor == null || valor <= 0){
    print('Valor inválido. Tente novamente.');
    return validaValor(valor);
  }else {
    return valor;
  }
}

String? validaOperacao(String? operacao, List<String> operacoes){
  print('Digite uma operação (deposito, reitrada, transferencia, pagamento):');
  operacao = stdin.readLineSync();

  if (operacoes.contains(operacao)) {
    return operacao;
  } else {
    print('Operação inválida. Tente novamente.');
    return validaOperacao(operacao, operacoes);
  }
}


*/


import 'dart:io';

void main(){
  List<String> metodos = ['cartao', 'boleto', 'paypal', 'pix'];
  String? metodo;

  metodo = validacaoMetodo(metodo, metodos);
  print('Entrada válida: $metodo');
}

String? validacaoMetodo(String? metodo, List<String> metodos){
  print("Qual o método de pagamento? [pix, boleto, cartao, paypal]");
  metodo = stdin.readLineSync();

  if (metodos.contains(metodo)){
    return metodo;
  } else {
      print('Método de pagamento inválido, porfavor tente novamente');
      return validacaoMetodo(metodo, metodos);
  }
}