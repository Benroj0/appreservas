class DetalleState {
  final String? habitacion;
  final bool cargando;

  const DetalleState({this.habitacion, this.cargando = false});

  DetalleState copyWith({String? habitacion, bool? cargando}) {
    return DetalleState(
      habitacion: habitacion ?? this.habitacion,
      cargando: cargando ?? this.cargando,
    );
  }
}
