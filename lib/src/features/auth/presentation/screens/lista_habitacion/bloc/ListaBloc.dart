import 'package:flutter_bloc/flutter_bloc.dart';
import 'ListaEvent.dart';
import 'ListaState.dart';

class ListaBloc extends Bloc<ListaEvent, ListaState> {
  ListaBloc() : super(const ListaState()) {
    on<CargarListaHabitaciones>(_onCargarListaHabitaciones);
  }

  void _onCargarListaHabitaciones(
    CargarListaHabitaciones event,
    Emitter<ListaState> emit,
  ) {
    emit(state.copyWith(cargando: true));

    final mock = [
      "Habitación Simple - S/120",
      "Habitación Doble - S/200",
      "Suite - S/350",
    ];

    emit(state.copyWith(habitaciones: mock, cargando: false));
  }
}
