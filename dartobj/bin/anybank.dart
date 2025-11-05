import '../lib/conta.dart';
void main() {
    ContaCorrente contaChris = ContaCorrente("Chris", 4000);
    ContaPoupanca contaDenize = ContaPoupanca("Denize", 4000);
    ContaEmpresa contaMatheus = ContaEmpresa('contaMatheus', 2000);  
    ContaInvestimento contaRoberta = ContaInvestimento('Roberta', 2000);

    ContaSalario contaIsadora = ContaSalario("Isadora", 9000, "112334594", "Amagi");

    contaChris.imprimeSaldo();
    contaChris.enviar(4300);

    contaDenize.imprimeSaldo();
    contaDenize.enviar(4300);  
    contaDenize.calculaRendimento();
    contaDenize.imprimeSaldo();

    contaIsadora.depositarSalario(10000);
    contaIsadora.imprimeSaldo();

    contaMatheus.enviar(1000);
    contaRoberta.receber(1000);

}
