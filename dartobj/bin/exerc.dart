// //Vendendo receitas
// void main(){
//   Receita itemUm = Receita("Macarrão ao pesto", 20.00);
//   Receita itemDois = Receita("Lasanha 4 queijos", 32.00);
//   Receita itemTres = Receita("Burrata com pesto", 28.00);

//   List<Receita> receitas = <Receita>[itemUm, itemDois, itemTres];
  
// }

// class Receita {
//   String nome;
//   double preco;

//   Receita(this.nome, this.preco);
// }

//EX 1. Criando uma classe para itens de estoque
void main(){
  ItemEstoque itemUm = ItemEstoque("Smartphone", 100, 2000.00);
  ItemEstoque itemDois = ItemEstoque("Notebook", 50, 5000.00);
  ItemEstoque itemTres = ItemEstoque("BobGoods", 75, 50.00);

  List<ItemEstoque> produtos = <ItemEstoque>[itemUm, itemDois, itemTres];

  itemUm.registrarEntrada(20);
  itemDois.registrarSaida(10);
  itemTres.registrarEntrada(9);
  itemTres.alterarPreco(90.00);

  for (ItemEstoque itemEstoque in produtos){
    print("Produto: ${itemEstoque.produto}, Quantidade em estoque: ${itemEstoque.qntdEmEstoque}, Preço: ${itemEstoque.preco}");
  }
}

class ItemEstoque {
  String produto;
  int qntdEmEstoque;
  double preco;

  ItemEstoque(this.produto, this.qntdEmEstoque, this.preco);

  void registrarEntrada(int valor){
    qntdEmEstoque += valor;
  }

  void registrarSaida(int valor){
    if (qntdEmEstoque >=valor){
      qntdEmEstoque -= valor;
    } else{
      print("Quantidade insuficiente em estoque para realizar a saída.");
    }
  }

  void alterarPreco(double valor){
    preco = valor;
  }
}