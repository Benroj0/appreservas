import 'package:flutter_bloc/flutter_bloc.dart';
import 'DetalleEvent.dart';
import 'DetalleState.dart';

class DetalleBloc extends Bloc<DetalleEvent, DetalleState> {
  DetalleBloc() : super(const DetalleState()) {
    on<CargarDetalleHabitacion>(_onCargarDetalleHabitacion);
  }

  void _onCargarDetalleHabitacion(
    CargarDetalleHabitacion event,
    Emitter<DetalleState> emit,
  ) async {
    emit(state.copyWith(cargando: true));

    await Future.delayed(const Duration(milliseconds: 500));

    if (!isClosed) {
      emit(state.copyWith(habitacion: event.habitacion, cargando: false));
    }
  }
}
