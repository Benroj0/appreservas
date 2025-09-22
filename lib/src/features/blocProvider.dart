import 'package:flutter_application_1/src/features/auth/presentation/screens/login/bloc/LoginBloc.dart';
import 'package:flutter_application_1/src/features/auth/presentation/screens/login/bloc/LoginEvent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BlocProvider> blocProviders = [
  BlocProvider<LoginBloc>(create: (context) => LoginBloc()..add(LoginInit())),
];
