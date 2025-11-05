// abstract class Documento {
//   String nomeDoDocumento;

//   Documento(this.nomeDoDocumento);

//   void imprimir();
// }

// class Relatorio extends Documento{
//   Relatorio(String nomeDoDocumento) : super(nomeDoDocumento);

//   @override
//   void imprimir(){
//     print('O $nomeDoDocumento foi enviado para impressão.');
//   }
// }

// void main() {
//   Relatorio relatorio = Relatorio('Relatório Anual');
//   relatorio.imprimir();
// }


//Ex5: Criando um programa de registro de funcionários

// abstract class Funcionario {
//   String nome;
//   double salarioBase;
//   String cargo;
//   String genero;

//   Funcionario(this.nome, this.salarioBase, this.cargo, this.genero);
  
//   void calcularSalario(){
//     print("Salário base: 3000");
//   }
// }

// class Analista extends Funcionario{

//   Analista(String nome, genero) : super(nome, 3000, 'Analista', genero);

//   @override
//   void calcularSalario(){
//     salarioBase = salarioBase + (salarioBase * 1.2);
//     print('Salário d$genero $cargo $nome: R\$ $salarioBase');
//   }
// }

// class Gerente extends Funcionario{
//   Gerente(String nome, genero) : super(nome, 3000, 'Gerente', genero);

//   @override
//   void calcularSalario(){
//     salarioBase = salarioBase + (salarioBase * 1.5);
//     print('Salário d$genero $cargo $nome: R\$ $salarioBase');
//   }
// }

// class Diretor extends Funcionario{
//   Diretor(String nome, genero) : super(nome, 3000, 'Diretor', genero);
  
//   @override
//   void calcularSalario(){
//     salarioBase = salarioBase + (salarioBase * 2.0);
//     print('Salário d$genero $cargo $nome: R\$ $salarioBase');
//   }
// }

// void main(){
//   Analista analista = Analista('João', 'o');
//   Gerente gerente = Gerente('Isadora', 'a');
//   Diretor diretor = Diretor('Fernão', 'o');

//   analista.calcularSalario();
//   gerente.calcularSalario();
//   diretor.calcularSalario();
// }



// ex6: Criando um programa informativo de espécies de seres vivos
// import 'dart:ffi';
// import 'dart:vmservice_io';

// abstract class SerVivo{
//   String nome;
//   String tipo;

//   SerVivo(this.nome, this.tipo);

//   void mostrarCaracteristicas(){
//   }
// }

// class Planta extends SerVivo{
//   Planta(String nome, String tipo) : super(nome, tipo);

//   @override
//   void mostrarCaracteristicas(){
//     print("$nome: é uma planta, não tem os cinco sentidos, é uma $tipo");
//   }
// }

// class Animal extends SerVivo{
//   int tempoVida;
//   Animal(String nome, String tipo, this.tempoVida) : super(nome, tipo);

//   @override
//   void mostrarCaracteristicas(){
//     print('$nome: tem cinco sentidos, pensa e fala, é $tipo e vive em média $tempoVida anos');
//   }
// }

// void main(){
//   Planta girassol = Planta('Girassol', 'flor');
//   girassol.mostrarCaracteristicas();
//   Planta laranjeira = Planta('Laranjeira', 'árvore');
//   laranjeira.mostrarCaracteristicas();

//   Animal serHumano = Animal('Ser Humano', 'bípede', 75);
//   serHumano.mostrarCaracteristicas();
//   Animal gato = Animal('Gato', 'quadrúpede', 20);
//   gato.mostrarCaracteristicas();
//   Animal cao = Animal('Cão', 'quadrúpede', 20);
//   cao.mostrarCaracteristicas();
// }



//ex7,8,9,10,11: Definindo a interface para agendamento
abstract class Agendamento{

  void calculaDuracaoConsulta(){
  }

  void verificaDisponibilidade(){
    }
}

class Medico implements Agendamento{

    @override
    void calculaDuracaoConsulta(){
    print('Duração de 30 minutos');
  }

  @override
  void verificaDisponibilidade(){
    print('Verificar disponibilidade no calendário');
  }
}

class Dentista implements Agendamento{

  @override
  void calculaDuracaoConsulta(){
    print('duração de 45 minutos');
  }

  @override
  void verificaDisponibilidade(){
    print('verificar disponibilidade considerando intervalos de 15 minutos');
  }
}

class gerenciadorDeAgendamentos{
  List<Agendamento> profissionais = [];

    void adicionarProfissional(Agendamento profissional){
      profissionais.add(profissional);
    }

    void exibirDuracaoEDisponiblidade(){
      for (Agendamento profissional in profissionais){
        profissional.calculaDuracaoConsulta();
        profissional.verificaDisponibilidade();
      }
    }
}

void main(){
  Medico medico = Medico();
  Dentista dentista = Dentista();

  gerenciadorDeAgendamentos gerenciador = gerenciadorDeAgendamentos();
  gerenciador.adicionarProfissional(medico);
  gerenciador.adicionarProfissional(dentista);

  gerenciador.exibirDuracaoEDisponiblidade();
}