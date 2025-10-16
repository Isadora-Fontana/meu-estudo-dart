abstract class Conta {
    String titular;
    double _saldo;
    
    Conta(this.titular, this._saldo);

    void receber(double valor){
      _saldo += valor;
      imprimeSaldo();
    }

    void enviar(double valor){
      if (_saldo >= valor){
        _saldo -= valor;
        imprimeSaldo();
      } else{
        print("Saldo insuficiente para transação");
      }
    }

    void imprimeSaldo(){
      print("O saldo atual de $titular, é R\$$_saldo.");
    }
}

class ContaCorrente extends Conta{
  double emprestimo = 300;

  ContaCorrente(super.titular, super._saldo);

  @override
  void enviar(double valor){

    if (_saldo + emprestimo >= valor){
      _saldo -= valor;
      imprimeSaldo();
    } else{
      print("Saldo insuficiênte para transferencia.");
    }
  }
}

class ContaPoupanca extends Conta{
  double rendimento = 0.05;

  ContaPoupanca(super.titular, super._saldo);

  void calculaRendimento(){
    _saldo += _saldo * rendimento;
  }
}

class ContaSalario extends Conta{
  String cnpj;
  String nomeEmpresa;

  ContaSalario(super.titular, super._saldo, this.cnpj, this.nomeEmpresa);

  void depositarSalario(double valor){
    _saldo += valor;
    print("O salário da $nomeEmpresa, de CNPJ $cnpj no valor de R\$$valor foi depositado!");
  }
}