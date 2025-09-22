import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/common_widgets.dart/app_logo.dart';
import 'package:flutter_application_1/src/common_widgets.dart/custom_text_field.dart';
import 'package:flutter_application_1/src/common_widgets.dart/primary_button.dart';
import 'package:flutter_application_1/src/constants/app_text_styles.dart';
import 'package:flutter_application_1/src/features/auth/presentation/screens/login/bloc/LoginBloc.dart';
import 'package:flutter_application_1/src/features/auth/presentation/screens/login/bloc/LoginEvent.dart';
import 'package:flutter_application_1/src/features/auth/presentation/screens/login/bloc/LoginState.dart';
import 'package:flutter_application_1/src/features/utils/BlocFormItem.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginContent extends StatelessWidget {
  final LoginBloc? bloc;
  final LoginState state;

  const LoginContent(this.bloc, this.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: Form(
            key: state.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const AppLogo(size: 100),
                const SizedBox(height: 16),
                Text(
                  'Reserva Hotel',
                  style: AppTextStyles.brandName,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),
                CustomTextField(
                  label: 'Email',
                  onChanged: (value) {
                    bloc?.add(
                      LoginEmailChanged(email: BlocFormItem(value: value)),
                    );
                  },
                  validator: (value) => state.email.error,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  label: 'Password',
                  isPassword: true,
                  onChanged: (value) {
                    bloc?.add(
                      LoginPasswordChanged(
                        password: BlocFormItem(value: value),
                      ),
                    );
                  },
                  validator: (value) => state.password.error,
                ),
                const SizedBox(height: 32),
                PrimaryButton(
                  text: 'Login',
                  onPressed: () {
                    if (state.formKey!.currentState!.validate()) {
                      bloc?.add(const LoginSubmitted());
                    } else {
                      Fluttertoast.showToast(
                        msg: 'Formulario inválido',
                        toastLength: Toast.LENGTH_LONG,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
