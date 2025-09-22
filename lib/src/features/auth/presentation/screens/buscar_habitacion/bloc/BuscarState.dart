class BuscarState {
  final String fechaEntrada;
  final String fechaSalida;
  final bool buscando;
  final String? error;

  const BuscarState({
    this.fechaEntrada = "",
    this.fechaSalida = "",
    this.buscando = false,
    this.error,
  });

  BuscarState copyWith({
    String? fechaEntrada,
    String? fechaSalida,
    bool? buscando,
    String? error,
  }) {
    return BuscarState(
      fechaEntrada: fechaEntrada ?? this.fechaEntrada,
      fechaSalida: fechaSalida ?? this.fechaSalida,
      buscando: buscando ?? this.buscando,
      error: error,
    );
  }
}
