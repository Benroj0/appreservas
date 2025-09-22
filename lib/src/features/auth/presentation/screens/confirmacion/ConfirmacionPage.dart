import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/ConfirmacionBloc.dart';
import 'ConfirmacionContent.dart';
import 'package:flutter_application_1/src/constants/app_colors.dart';

class ConfirmacionPage extends StatelessWidget {
  const ConfirmacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ConfirmacionBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Confirmación",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: AppColors.primary,
        ),
        body: const SafeArea(child: ConfirmacionContent()),
      ),
    );
  }
}
