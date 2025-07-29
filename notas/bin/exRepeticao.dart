/*

import 'dart:io';

void main(){
  int n = 0;
  int qntdN = 4;

  for (;n <= qntdN;){
    n = n + 1;
    print(n);
  }
}


import 'dart:io';

void main(){
  List<String> nomes = ["Ana", "João", "Maria"];
  
  for (var i = 0; i < nomes.length; i++){
    print("Nomes: ${nomes[i]}");
  }
}

outra forma...

List<String> nomes = ['Ana', 'João', 'Maria'];

for (String nome in nomes) {
  print('Nome: $nome');
}
*/

void main() {
  String texto = 'Parou! Este código não continua.';
  int index = 0;

  do {
    print(texto[index]);
    index++;
  } while (index < texto.length && texto[index - 1] != '!');
}