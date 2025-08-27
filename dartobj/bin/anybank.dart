import '../lib/conta.dart';
void main() {
    Conta contaMatheus = Conta("Matheus", 1000);
    Conta contaRoberta = Conta("Roberta", 2000);
    ContaCorrente contaChris = ContaCorrente("Chris", 4000);
    ContaPoupanca contaDenize = ContaPoupanca("Denize", 4000);
    ContaSalario contaSalarioCatarina = ContaSalario("Catarina", 50, "12345678", "Anybank");



    List<Conta> contas = <Conta>[contaMatheus, contaRoberta];
    
    for (Conta conta in contas) {
        conta.imprimeSaldo();
    }
    
    contaRoberta.receber(3000);
    contaMatheus.receber(500);
    contaMatheus.enviar(200);

    contaChris.imprimeSaldo();
    contaChris.enviar(4300);

    contaDenize.imprimeSaldo();
    contaDenize.enviar(4300);
    contaDenize.calculaRendimento();
    contaDenize.imprimeSaldo();

    contaSalarioCatarina.depositarSalario(2000);
    contaSalarioCatarina.imprimeSaldo();
}
