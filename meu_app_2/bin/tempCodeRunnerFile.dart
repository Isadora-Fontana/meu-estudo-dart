import 'dart:io';

void main(List<String> args) {
  print ("Olá, me chamo Dart. Qual seu nome?");
  var entrada = stdin.readLineSync();
  print("Muito prazer, $entrada. Vamos fazer vários programas juntos!");
}