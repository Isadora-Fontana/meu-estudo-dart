// // Gerenciador de tarefas //

// void main(){
// List<String> tarefas = ["Estudar", "Comprar mantimentos"];

//   for (String tarefa in tarefas){
//     print(tarefa);
//   }
// }




// void main(){
// List<int> ids = [1, 2, 3, 4, 5, 6, 7, 8,];

//   for (int id in ids){
//     if (id % 2 == 0){
//       print(id);
//     }
//   }
// }




// void main(){
//   List<String> produtos = ["maça", "banana", "maça", "laranja", "maça"];
//   int quantidade = contarMacas(produtos);
//   print("Quantidade de maçãs: $quantidade");
// }

// int contarMacas(List<String> produtos){
  
//   int contador = 0;

//   for (String produto in produtos){
//     if (produto == "maça"){
//       contador ++;
//     }
//   }
//   return contador;
// }




// Este é apenas um exemplo, os valores que as listas possuem podem variar. 

// void main() {
//   List<String> produtosCarrinho = ["arroz", "feijão", "macarrão", "leite", "açúcar"]; 
//   List<String> produtosVisitados = ["arroz", "feijão", "macarrão", "leite", "açúcar", "café", "chocolate"]; 
  
//   exibirNaoAdicionados(produtosVisitados, produtosCarrinho);
// }

// void exibirNaoAdicionados(List<String> visitados, List<String> carrinho) { 
//   for (String produto in visitados) { 
//     if (!carrinho.contains(produto)) { 
//       print(produto); 
//     } 
//   } 
// }





// Este é apenas um exemplo, os valores que o set possui podem variar. 

// bool verificarDisponibilidade(Set<int> disponiveis, int codigo) {
//   return disponiveis.contains(codigo);
// }

// void main() {
//   Set<int> codigosDisponiveis = {1, 2, 3, 4, 5};

//   int codigoQueQuero = 6;

//   if (verificarDisponibilidade(codigosDisponiveis, codigoQueQuero)) {
//     print("O item $codigoQueQuero está disponível!");
//   } else {
//     print("O item $codigoQueQuero não está disponível.");
//   }
// }



// void main(){
//   Set<int> produtosSemana = {1, 2, 3, 4};   
//   Set<int> produtosMes = {3, 4, 5, 6}; 

//   todasPromos(produtosSemana, produtosMes);
// }

// todasPromos(Set<int> semana, Set<int> mes){
//   Set<int> promocoesTotais = {};

//   for (int produto in semana){
//     promocoesTotais.add(produto);
//   }
//   for (int produto in mes){
//     promocoesTotais.add(produto);
//   }
//   for (int produto in promocoesTotais){
//     print(produto);
//   }
//   //Ou o ultimo for ou o return abaixo, tanto faz, ambos printam o resultado//
// return print(promocoesTotais);
// }

//OUTRA FORMA ATRAVÉS DO MÉTODO "UNION"//

// void main() {
//   Set<int> produtosSemana = {1, 2, 3, 4};   
//   Set<int> produtosMes = {3, 4, 5, 6}; 

//   todasPromos(produtosSemana, produtosMes);
// }

// void todasPromos(Set<int> semana, Set<int> mes) {
//   Set<int> promocoesTotais = semana.union(mes); // Faz a união direto
//   print(promocoesTotais);
// }




void main(){
  Set<String> produtosVendidos = {"maçã", "banana", "laranja", "kiwi"};   
  Set<String> produtosEstoque = {"banana", "kiwi", "laranja", "pera", "melão", "melancia"}; 

  verificadorEstoque(produtosVendidos, produtosEstoque);
}

verificadorEstoque(Set<String> vendidos, Set<String> estoque){
  Set<String> naoVendidos = {};

  for (String produto in estoque){
    if (!vendidos.contains(produto)){
      naoVendidos.add(produto);
    }
  }
  print("Os produtos não vendidos são $naoVendidos");
}