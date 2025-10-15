void main() {

  // Criando instâncias de frutas, legumes e temperos
  var banana = Fruta('Banana');
  var cenoura = Legume('Cenoura');
  var sal = Tempero('Sal');

  // Exibindo os detalhes
  banana.detalhes();
  print('');
  cenoura.detalhes();
  print('');
  sal.detalhes();
}

abstract class Ingredientes {
  String nome;
  String tipo;

  Ingredientes(this.nome, this.tipo);

  detalhes(){
    print("Ingrediente: $nome, do tipo: $tipo");
  }
}

class Fruta extends Ingredientes{
  Fruta(String nome) : super(nome, 'Fruta');

  @override
  detalhes() {
    print("Detalhe: As frutas geralmente não são cozidas nas receitas.");
  }
}

class Legume extends Ingredientes{
  Legume(String nome) : super(nome, 'Legume');

  @override
  detalhes(){
    print("Detalhe: Os legumes geralmente precisam ser cozidos nas receitas.");
  }

}

class Tempero extends Ingredientes{
  Tempero(String nome) : super(nome, 'Legume');

  @override
  void detalhes() {
    print('Detalhe: Os temperos são usados para condimentar os alimentos.');
  }
}
