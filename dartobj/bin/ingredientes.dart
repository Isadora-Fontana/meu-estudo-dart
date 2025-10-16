class Ingrediente {
  String nome;
  String tipo;

  Ingrediente(this.nome, this.tipo);

  void detalhes(){
    print("Ingrediente: $nome");
    print("Tipo: $tipo");
  }
}

class Fruta extends Ingrediente{

  Fruta(String nome) : super(nome, "Fruta");

  @override
  void detalhes() {
    super.detalhes();
    print("Detalhe: Em geral, são vegetais que não podem ser cozidos nas receitas, costumam ser adocicados ou azedos.");
  }
}

class Legume extends Ingrediente{

  Legume(String nome) : super(nome, "Legume");

  @override
  void detalhes(){
    super.detalhes();
    print("Detalhe: Em geral, são cozidos nas receitas.");
  }

}

class Tempero extends Ingrediente{

  Tempero(String nome) : super(nome, "Tempero");

  @override
  void detalhes(){
    super.detalhes();
    print("Detalhe: São usados para realçar melhor os sabores de outros alimentos.");
  }

}

void main() {
  var banana = Fruta("Banana");
  var cenoura = Legume("Cenoura");
  var sal = Tempero("Sal");

  banana.detalhes();
  print("");
  cenoura.detalhes();
  print("");
  sal.detalhes();
}