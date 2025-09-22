import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/BuscarBloc.dart';
import 'BuscarContent.dart';
import 'package:flutter_application_1/src/constants/app_colors.dart';

class BuscarPage extends StatelessWidget {
  const BuscarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BuscarBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Buscar Habitación",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: AppColors.primary,
        ),
        body: const SafeArea(child: BuscarContent()),
      ),
    );
  }
}
