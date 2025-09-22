class ConfirmacionState {
  final bool confirmada;

  const ConfirmacionState({this.confirmada = false});

  ConfirmacionState copyWith({bool? confirmada}) {
    return ConfirmacionState(confirmada: confirmada ?? this.confirmada);
  }
}
