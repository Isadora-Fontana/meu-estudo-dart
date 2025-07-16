import 'dart:convert';
import 'dart:io';

void main() {
  print("Olá! Qual o seu nome?");
  String? nome = stdin.readLineSync(encoding: utf8);

  print("Qual a sua idade?");
  String? idade = stdin.readLineSync();

  print("Olá $nome, você tem $idade anos!");
}