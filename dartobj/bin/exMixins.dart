//ex1 á 3. Criando um mixin para cálculo de taxa de bagagem.
 import 'dart:io';

// mixin TaxaBagagem{
//   double taxa = 0.10;

//   double calcularTaxa(double valor){
//     return valor * taxa;
//   }
// }

// abstract class Passagem {
//   String cliente;
//   double valorBase;

//   Passagem(this.cliente, this.valorBase);

//   double calcularPrecoFinal() {
//     return valorBase;
//   }
// }

// class PassagemComBagagem extends Passagem with TaxaBagagem{
//   PassagemComBagagem(super.cliente, super.valorBase);

//   @override
//   double calcularPrecoFinal(){
//     return valorBase + calcularTaxa(valorBase);
//   }
// }

// class PassagemSemBagagem extends Passagem{
//   PassagemSemBagagem(super.cliente, super.valorBase);
// }

mixin ControleAcesso {
  bool verificarPermissaoAdmin(String papel) {
    return papel == 'admin';
  }

  void executarOperacao(String papel, Function operacao) {
    if (verificarPermissaoAdmin(papel)) {
      operacao();
    } else {
      print('Acesso negado');
    }
  }
}

class ServicoUsuario with ControleAcesso {
  void deletarUsuario() {
    executarOperacao('admin', () => print('Usuário deletado'));
  }
}

class ServicoProduto with ControleAcesso {
  void adicionarProduto() {
    executarOperacao('admin', () => print('Produto adicionado'));
  }
}