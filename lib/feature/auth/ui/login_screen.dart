
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/ui/components/app_text_button.dart';
import '../../../app/ui/components/app_text_field.dart';
import '../domain/auth_state/auth_cubit.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controllerLogin = TextEditingController();
  final controllerPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Авторизация")),
      body: Form(
        key: formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppTextField(
                  contoller: controllerLogin,
                  labelText: 'Логин',
                ),
                const SizedBox(height: 16),
                AppTextField(
                  obscureText: true,
                  contoller: controllerPassword,
                  labelText: 'Пароль',
                ),
                const SizedBox(height: 16),
                AppTextButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() == true)
                      {
                        _onTapToSignIn(context.read<AuthCubit>());
                      }
                  },
                  text: "Войти",
                ),
                const SizedBox(height: 16),
                AppTextButton(
                  backgroundColor: Colors.grey,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterScreen(),));
                  },
                  text: "Регистрация",
                ),
              ],
            ),
          ),
        ),
      )
    );
  }


  void _onTapToSignIn(AuthCubit authCubit) =>
      authCubit.signIn(username: controllerLogin.text, password: controllerPassword.text);
}
