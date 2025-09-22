import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/common_widgets.dart/app_logo.dart';
import 'package:flutter_application_1/src/common_widgets.dart/primary_button.dart';
import 'package:flutter_application_1/src/constants/app_text_styles.dart';
import 'package:flutter_application_1/src/routing/app_routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Text(
                '¡BIENVENIDO!',
                style: AppTextStyles.screenTitle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              const AppLogo(size: 150),
              const SizedBox(height: 16),
              Text(
                'Hotel Sol Andino',
                style: AppTextStyles.brandName,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Text(
                '"Haz la reserva de tu habitación de forma rápida y sencilla"',
                style: AppTextStyles.body,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              PrimaryButton(
                text: 'Comenzar',
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.login);
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
