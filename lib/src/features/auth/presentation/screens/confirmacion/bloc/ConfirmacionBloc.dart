import 'package:flutter_bloc/flutter_bloc.dart';
import 'ConfirmacionEvent.dart';
import 'ConfirmacionState.dart';

class ConfirmacionBloc extends Bloc<ConfirmacionEvent, ConfirmacionState> {
  ConfirmacionBloc() : super(const ConfirmacionState()) {
    on<FinalizarReserva>(_onFinalizarReserva);
  }

  void _onFinalizarReserva(
    FinalizarReserva event,
    Emitter<ConfirmacionState> emit,
  ) {
    emit(state.copyWith(confirmada: true));
  }
}
