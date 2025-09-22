import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/src/routing/app_routes.dart';
import 'bloc/DetalleBloc.dart';
import 'bloc/DetalleState.dart';

class DetalleContent extends StatelessWidget {
  final String habitacion;
  const DetalleContent({super.key, required this.habitacion});

  // Función para decidir qué imagen mostrar
  String _assetDesdeString(String hab) {
    final l = hab.toLowerCase();
    if (l.contains("doble")) return "assets/img/doble.png";
    if (l.contains("suite")) return "assets/img/suite.png";
    return "assets/img/simple.png";
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetalleBloc, DetalleState>(
      builder: (context, state) {
        if (state.cargando) {
          return const Center(child: CircularProgressIndicator());
        }

        final texto = state.habitacion ?? habitacion;
        final assetImg = _assetDesdeString(texto);

        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Detalle de la habitación",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // Imagen grande de la habitación
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  assetImg,
                  width: 260,
                  height: 160,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => const Icon(Icons.bed, size: 80),
                ),
              ),

              const SizedBox(height: 16),
              Text(
                texto,
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.confirmacion);
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
