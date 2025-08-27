import 'dart:io';

void main() {
  stdout.write('Olá! Qual o seu nome?\n');
  String? nome = stdin.readLineSync(encoding: systemEncoding);

  stdout.write('Qual a sua idade?\n');
  String? idade = stdin.readLineSync(encoding: systemEncoding);

  print('Olá $nome, você tem $idade anos!');
}
