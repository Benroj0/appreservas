class ListaState {
  final List<String> habitaciones;
  final bool cargando;
  final String? error;

  const ListaState({
    this.habitaciones = const [],
    this.cargando = false,
    this.error,
  });

  ListaState copyWith({
    List<String>? habitaciones,
    bool? cargando,
    String? error,
  }) {
    return ListaState(
      habitaciones: habitaciones ?? this.habitaciones,
      cargando: cargando ?? this.cargando,
      error: error,
    );
  }
}
