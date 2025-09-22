import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/src/constants/app_colors.dart';
import 'package:flutter_application_1/src/features/auth/presentation/screens/login/LoginPage.dart';
import 'package:flutter_application_1/src/features/auth/presentation/screens/welcome_screen.dart';
import 'package:flutter_application_1/src/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:flutter_application_1/src/features/auth/presentation/screens/buscar_habitacion/BuscarPage.dart';
import 'package:flutter_application_1/src/features/auth/presentation/screens/lista_habitacion/ListaPage.dart';
import 'package:flutter_application_1/src/features/auth/presentation/screens/detalle_habitacion/DetallePage.dart';
import 'package:flutter_application_1/src/features/auth/presentation/screens/confirmacion/ConfirmacionPage.dart';
import 'package:flutter_application_1/src/routing/app_routes.dart';
import 'package:flutter_application_1/src/features/blocProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders,
      child: MaterialApp(
        title: 'Reserva de Habitaciones',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.background,
          fontFamily: 'SansSerif',
        ),
        initialRoute: AppRoutes.welcome,
        routes: {
          AppRoutes.welcome: (context) => const WelcomeScreen(),
          AppRoutes.login: (context) => const LoginPage(),
          AppRoutes.dashboard: (context) => const DashboardScreen(),
          AppRoutes.buscarHabitacion: (context) => const BuscarPage(),
          AppRoutes.listaHabitacion: (context) => const ListaPage(),
        },
        onGenerateRoute: (settings) {
          if (settings.name == AppRoutes.detalleHabitacion) {
            final habitacion = settings.arguments as String;
            return MaterialPageRoute(
              builder: (context) => DetallePage(habitacion: habitacion),
            );
          }
          if (settings.name == AppRoutes.confirmacion) {
            return MaterialPageRoute(
              builder: (context) => const ConfirmacionPage(),
            );
          }
          return null;
        },
      ),
    );
  }
}
