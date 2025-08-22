import 'package:dartobj/clienteHotel.dart';
void main(){
  Cliente cliente = Cliente("Joaquim", []);
  cliente.fazerReserva("101");
  cliente.fazerReserva("102");
  cliente.fazerReserva("103");
  cliente.cancelReserva("102");
}
