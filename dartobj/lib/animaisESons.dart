// class Animal{

//   void emitirSom(){

//   }
// }

// class Gato extends Animal{
  
//   @override
//   void emitirSom(){
//     print("O gato miou.");
//   }

//   void arranharMoveis(){
//     print("O gato está arranhando os móveis.");
//   }

// }

// class Cachorro extends Animal{

//   @override
//   void emitirSom(){
//     print("O cachorro late.");
//   }  

//     void abanarRabo(){
//     print("O cachorro está abanando o rabo.");
//   }
// }



//4. Representando quartos com herança

class Quarto{
  String tipo;
  double valorDiaria;
  int diarias;

  Quarto(this.tipo, this.valorDiaria, this.diarias);

  void reservar(){
    print("Reserva realizada, um quarto $tipo, por $diarias dias, no valor de R\$$valorDiaria por diária.");
  }

  void calcularValorTotal(){
    double valorTotal;
    valorTotal = diarias * valorDiaria;
    print("Totalizando R\$$valorTotal.");
  }
}

class QuartoSimples extends Quarto{
  QuartoSimples(int diarias) : super("Simples", 80, diarias);
}

class QuartoMedio extends Quarto{
  QuartoMedio(int diarias) : super( "Medio", 250, diarias);
  
  void cafeDaManha(){
    print("Servindo café da manhã no quarto $tipo");
  }
}

class QuartoLuxo extends Quarto{
  QuartoLuxo(int diarias) : super( "Luxo", 1000, diarias);

  void cafeDaManha(){
    print("Servindo café da manhã no quarto $tipo");
  }

  void servicoDeQuarto(){
    print("Limpando quarto $tipo");
  }
}