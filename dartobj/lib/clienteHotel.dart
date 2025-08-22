class Cliente{
  String nome;
  List<String> _reservas;

  Cliente(this.nome, this._reservas);

  fazerReserva(String numeroQuarto){
    _reservas.add(numeroQuarto);
    _mostrarReservas();
  }

  _mostrarReservas(){
    print(_reservas);
  }

  cancelReserva(String valor){
    if (_reservas.contains(valor)){
      _reservas.remove(valor);
      print("Sua reserva $valor foi cancelada com sucesso");
      _mostrarReservas();
    }else{
      print("O quarto $valor não faz parte da(s) sua(s) reservas.");
    }
  }
}