import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Bienvenido al Hotel Sol Andino",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            "Explora nuestras habitaciones y realiza tu reserva",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 34, 93, 195),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),
            icon: const Icon(Icons.search, color: Colors.white),
            label: const Text(
              "Buscar habitaciones",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/buscarHabitacion");
            },
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Center(
              child: Image.asset(
                "assets/img/camas.png",
                fit: BoxFit.contain,
                height: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
