import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/ui/components/app_text_button.dart';
import '../../../app/ui/components/app_text_field.dart';
import '../domain/auth_state/auth_cubit.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final controllerLogin = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerFullName = TextEditingController();
  final controllerJobPost = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerPassword2 = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(title: const Text("Регистрация")),
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
                  contoller: controllerEmail,
                  labelText: 'Email',
                ),
                const SizedBox(height: 16),
                AppTextField(
                  contoller: controllerFullName,
                  labelText: 'ФИО',
                ),
                const SizedBox(height: 16),
                AppTextField(
                  contoller: controllerJobPost,
                  labelText: 'Должность',
                ),
                const SizedBox(height: 16),
                AppTextField(
                  obscureText: true,
                  contoller: controllerPassword,
                  labelText: 'Пароль',
                ),
                const SizedBox(height: 16),
                AppTextField(
                  obscureText: true,
                  contoller: controllerPassword2,
                  labelText: 'Повторите пароль',
                ),
                const SizedBox(height: 16),
                AppTextButton(
                  backgroundColor: Colors.grey,
                  onPressed: () {
                    if(formKey.currentState?.validate() != true) return;

                    if(controllerPassword2.text != controllerPassword.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Пароли не совпадают")));
                    } else {

                      _onTapToSigUp(context.read<AuthCubit>());
                      Navigator.of(context).pop();
                    }

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

  void _onTapToSigUp(AuthCubit authCubit) =>
      authCubit.signUp(
          username: controllerLogin.text,
          password: controllerPassword.text,
          email: controllerEmail.text,
          fullName: controllerFullName.text,
          jobPost: controllerJobPost.text
      );
}
