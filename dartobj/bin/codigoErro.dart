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
abstract class SerVivo{
  String nome;
  String tipo;

  SerVivo(this.nome, this.tipo);

  void mostrarCaracteristicas(){

  }
}

class Planta implements SerVivo{
  Planta(String nome) : super(nome, 'planta');
}
