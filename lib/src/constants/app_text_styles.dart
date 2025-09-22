import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/src/constants/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const TextStyle screenTitle = TextStyle(
    fontFamily: 'SansSerif',
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 0, 0, 0),
    letterSpacing: 1.2,
  );

  static const TextStyle brandName = TextStyle(
    fontFamily: 'SansSerif',
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 0, 0, 0),
    letterSpacing: 1.2,
  );

  static const TextStyle body = TextStyle(
    fontFamily: 'SansSerif',
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: AppColors.textSecondary,
    letterSpacing: 1.5,
  );

  static const TextStyle button = TextStyle(
    fontFamily: 'SansSerif',
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );

  static const TextStyle inputLabel = TextStyle(
    fontFamily: 'SansSerif',
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );

  static const TextStyle textLink = TextStyle(
    fontFamily: 'SansSerif',
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 0, 0, 0),
  );
}
