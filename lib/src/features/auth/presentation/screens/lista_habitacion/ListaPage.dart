import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/ListaBloc.dart';
import 'ListaContent.dart';
import 'package:flutter_application_1/src/constants/app_colors.dart';

class ListaPage extends StatelessWidget {
  const ListaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ListaBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Lista de Habitaciones",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: AppColors.primary,
        ),
        body: const SafeArea(child: ListaContent()),
      ),
    );
  }
}
