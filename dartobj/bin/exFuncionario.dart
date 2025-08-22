import 'package:dartobj/exFuncionariosRest.dart';
void main(){
  Funcionario funcionarioIsadora = Gerente("Isadora", 50000);
  Funcionario funcionarioJoao = Cozinheiro("João", 50001);
  Funcionario funcionarioLuiz = Garcom("Luiz", 30000);

  funcionarioJoao.trabalhar();
  funcionarioLuiz.trabalhar();
  funcionarioIsadora.trabalhar();
}