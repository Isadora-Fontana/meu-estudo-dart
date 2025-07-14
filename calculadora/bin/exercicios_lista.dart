import 'dart:io'; //"Meu código -completo"

void main(){
  List<String> categoria = <String>["eletronicos" , "alimentos", "vestuario", "livros"];


  print("Digite a categoria do produto (eletronicos, alimentos, vestuario, livros): ");
  String entrada = stdin.readLineSync()!;

  if (entrada != null){
    if(entrada != ""){
      if (categoria.contains(entrada)){
        print("Categoria válida: $entrada");
    } else{
        print("Categoria inválida");
    }
    }
  }
}

/*

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

*/