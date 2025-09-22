import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/BuscarBloc.dart';
import 'bloc/BuscarEvent.dart';
import 'bloc/BuscarState.dart';

class BuscarContent extends StatefulWidget {
  const BuscarContent({super.key});

  @override
  State<BuscarContent> createState() => _BuscarContentState();
}

class _BuscarContentState extends State<BuscarContent> {
  final TextEditingController _entrada = TextEditingController();
  final TextEditingController _salida = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BuscarBloc, BuscarState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _entrada,
                decoration: const InputDecoration(
                  labelText: "Fecha de entrada",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _salida,
                decoration: const InputDecoration(
                  labelText: "Fecha de salida",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.read<BuscarBloc>().add(
                    BuscarHabitaciones(_entrada.text, _salida.text),
                  );
                  Navigator.pushNamed(context, "/listaHabitacion");
                },
                child: state.buscando
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text("Buscar"),
              ),
            ],
          ),
        );
      },
    );
  }
}
