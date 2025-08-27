import '../lib/animaisESons.dart';

// void main(){ 
//   Cachorro cachorro = Cachorro();
//   Gato gato = Gato();

//   cachorro.emitirSom();
//   cachorro.abanarRabo();
//   gato.emitirSom();
//   gato.arranharMoveis();
// }




//4. Representando quartos com herança

void main(){
  QuartoSimples quartoSimples = QuartoSimples(3);
  quartoSimples.reservar();

  QuartoMedio quartoMedio = QuartoMedio(5);
  quartoMedio.reservar();

  QuartoLuxo quartoLuxo = QuartoLuxo(7);
  quartoLuxo.reservar();
}


