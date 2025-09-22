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

  // Función para decidir qué imagen mostrar
  String _assetDesdeString(String hab) {
    final l = hab.toLowerCase();
    if (l.contains("doble")) return "assets/img/doble.png";
    if (l.contains("suite")) return "assets/img/suite.png";
    return "assets/img/simple.png";
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
            final assetImg = _assetDesdeString(hab);

            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    assetImg,
                    width: 56,
                    height: 56,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        const Icon(Icons.bed, size: 40),
                  ),
                ),
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
