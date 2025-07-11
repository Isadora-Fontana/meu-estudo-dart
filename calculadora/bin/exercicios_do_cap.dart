/*
import 'dart:io';

void main(){
  print("Qual a sua idade?");
  int idade = int.parse(stdin.readLineSync()!);

  if (idade < 18){
    print("Não pode dirigir");
  } else if (idade >=18){
    print("Parabéns! Você tem idade sufuciente para dirigir");
  }
}

import 'dart:io'; 

void main(){
  print("Digite um número de 1 á 12:");
  String numero = stdin.readLineSync()!;

  switch (numero){
    case "1":
    print("Janeiro");

    case "2":
    print("Fevereiro");

    case "3":
    print("Março");

    case "4":
    print("Abril");

    case "5":
    print("Maio");

    case "6":
    print("Junho");

    case "7":
    print("Julho");

    case "8":
    print("Agosto");

    case "9":
    print("Setembro");

    case "10":
    print("Outubro");

    case "11":
    print("Novembro");

    case "12":
    print("Dezembro");
  }

}

import 'dart:io'; 

double saldo = 1000.0; // Saldo inicial em reais

void main(){
  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);



  if (valorPix <= saldo){
    print("Pagamento efetuado com sucesso, saldo atual:");
    print(saldo - valorPix);    
  } else if (valorPix >= saldo){
    print("Saldo insuficiênte");
  }
}

import 'dart:io';

void main() {
  print('Digite sua idade:');
  int idade = int.parse(stdin.readLineSync()!);

  print('Digite o país em que se encontra (Brasil, EUA, Japão):');
  String pais = stdin.readLineSync()!.toLowerCase();

  if ((pais == 'brasil' && idade >= 18) || 
      (pais == 'eua' && idade >= 16) || 
      (pais == 'japão' && idade >= 20)) {
    print('Você pode dirigir um veículo no $pais.');
  } else {
    print('Você não pode dirigir um veículo no $pais.');
  }
}
*/