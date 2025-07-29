import 'dart:io';
import 'dart:math';
void main(){
  final random = Random();

  final respostasNegativas = [
    "Vai se ferrar? Tenta dnv ai babeica]...",
    "Errado! Digita sim vai😡",
    "Eu vou ficar aqui até você dizer sim palhaço",
    "Vc ta de brincadeira cmg ne fi de rapariga"
  ];

  String? getComando(){
    print('Eu te amo, Você me ama?[sim, nao] ');
    List<String> respPoss = <String>["sim", "nao"];
    String? resposta = "";

    resposta = stdin.readLineSync();

      if (resposta == null || !respPoss.contains(resposta)){
          print("Resposta não esperada bocózinho, pfv siga o roteiro");
          return getComando();
      }
      return resposta;
  }

  String? resposta;

  do{
    resposta = getComando();
    if (resposta == "sim"){
      print("Te amo muitooo mais e ponto final.");
    } else{
      print(respostasNegativas[random.nextInt(respostasNegativas.length)]);
      }
    } while (resposta != "sim");
}