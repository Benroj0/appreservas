import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/routing/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/ListaBloc.dart';
import 'bloc/ListaEvent.dart';
import 'bloc/ListaState.dart';

class ListaContent extends StatefulWidget {
  const ListaContent({super.key});

  @override
  State<ListaContent> createState() => _ListaContentState();
}

class _ListaContentState extends State<ListaContent> {
  @override
  void initState() {
    super.initState();
    context.read<ListaBloc>().add(CargarListaHabitaciones());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListaBloc, ListaState>(
      builder: (context, state) {
        if (state.cargando) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.habitaciones.isEmpty) {
          return const Center(child: Text("No hay habitaciones disponibles"));
        }

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: state.habitaciones.length,
          itemBuilder: (context, index) {
            final hab = state.habitaciones[index];
            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                title: Text(hab),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.detalleHabitacion,
                    arguments: hab,
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
