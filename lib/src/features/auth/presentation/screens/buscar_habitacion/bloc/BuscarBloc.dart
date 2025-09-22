import 'package:flutter_bloc/flutter_bloc.dart';
import 'BuscarEvent.dart';
import 'BuscarState.dart';

class BuscarBloc extends Bloc<BuscarEvent, BuscarState> {
  BuscarBloc() : super(const BuscarState()) {
    on<BuscarHabitaciones>(_onBuscarHabitaciones);
  }

  void _onBuscarHabitaciones(
    BuscarHabitaciones event,
    Emitter<BuscarState> emit,
  ) {
    emit(
      state.copyWith(
        fechaEntrada: event.fechaEntrada,
        fechaSalida: event.fechaSalida,
        buscando: true,
      ),
    );
    Future.delayed(const Duration(seconds: 1), () {
      emit(state.copyWith(buscando: false));
    });
  }
}
