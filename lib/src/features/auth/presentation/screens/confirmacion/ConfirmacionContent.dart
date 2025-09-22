import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/ConfirmacionBloc.dart';
import 'bloc/ConfirmacionState.dart';
import 'bloc/ConfirmacionEvent.dart';

class ConfirmacionContent extends StatelessWidget {
  const ConfirmacionContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfirmacionBloc, ConfirmacionState>(
      builder: (context, state) {
        if (!state.confirmada) {
          context.read<ConfirmacionBloc>().add(FinalizarReserva());
          return const Center(child: CircularProgressIndicator());
        }
        return const Center(
          child: Text(
            "¡Reserva realizada con éxito!",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
