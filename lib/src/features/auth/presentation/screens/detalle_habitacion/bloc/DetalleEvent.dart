abstract class DetalleEvent {}

class CargarDetalleHabitacion extends DetalleEvent {
  final String habitacion;
  CargarDetalleHabitacion(this.habitacion);
}
