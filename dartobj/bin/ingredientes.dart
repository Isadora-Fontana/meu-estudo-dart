void main() {
  
}

class Ingredientes {
  String nome;
  String tipo;

  detalhes(){
    print("Ingrediente: $nome, do tipo: $tipo");
  }
}

class Fruta extends Ingredientes{

  @override
  detalhes() {
    print("Em geral, são vegetais que não podem ser cozidos nas receitas");
  }
}

class Legume extends Ingredientes{

  @override
  detalhes(){
    print("Em geral,  ");
  }

}

class Tempero extends Ingredientes{

}
