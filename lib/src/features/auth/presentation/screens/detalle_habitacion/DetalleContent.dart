import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/DetalleBloc.dart';
import 'bloc/DetalleState.dart';

class DetalleContent extends StatelessWidget {
  final String habitacion;
  const DetalleContent({super.key, required this.habitacion});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetalleBloc, DetalleState>(
      builder: (context, state) {
        if (state.cargando) {
          return const Center(child: CircularProgressIndicator());
        }

        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Detalle de la habitación",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                state.habitacion ?? habitacion,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/confirmacion");
                },
                child: const Text("Reservar"),
              ),
            ],
          ),
        );
      },
    );
  }
}
