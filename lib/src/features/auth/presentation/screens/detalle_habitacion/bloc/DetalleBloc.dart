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
  ) {
    emit(state.copyWith(cargando: true));

    // Simulación de carga de detalle
    Future.delayed(const Duration(milliseconds: 500), () {
      emit(state.copyWith(habitacion: event.habitacion, cargando: false));
    });
  }
}
