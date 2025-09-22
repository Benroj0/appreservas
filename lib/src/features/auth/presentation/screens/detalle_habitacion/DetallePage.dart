import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/DetalleBloc.dart';
import 'bloc/DetalleEvent.dart';
import 'DetalleContent.dart';
import 'package:flutter_application_1/src/constants/app_colors.dart';

class DetallePage extends StatelessWidget {
  final String habitacion;
  const DetallePage({super.key, required this.habitacion});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DetalleBloc()..add(CargarDetalleHabitacion(habitacion)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Detalle Habitación",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: AppColors.primary,
        ),
        body: DetalleContent(habitacion: habitacion),
      ),
    );
  }
}
