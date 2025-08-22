class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);

  void trabalhar(){
    print("$nome trabalhou");
  }
}

class Cozinheiro extends Funcionario {
  Cozinheiro(super.nome, super.salario);
  
  @override
  void trabalhar(){
    print("$nome trabalhou na cozinha");
  }
}

class Garcom extends Funcionario {
  Garcom(super.nome, super.salario);
  
    @override
  void trabalhar(){
    print("$nome serviu as mesas");
  }
}

class Gerente extends Funcionario {
  Gerente(super.nome, super.salario);
  
    @override
  void trabalhar(){
    print("$nome gerenciou a equipe");
  }
}
