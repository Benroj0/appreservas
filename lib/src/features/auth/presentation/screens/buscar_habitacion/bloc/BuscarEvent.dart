abstract class BuscarEvent {}

class BuscarHabitaciones extends BuscarEvent {
  final String fechaEntrada;
  final String fechaSalida;

  BuscarHabitaciones(this.fechaEntrada, this.fechaSalida);
}
