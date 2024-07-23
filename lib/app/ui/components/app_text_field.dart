import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({super.key, required this.contoller, required this.labelText, this.obscureText = false,});


  final TextEditingController contoller;
  final String labelText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscureText,
      validator:emptyValidator,
      maxLines: 1,
      controller: contoller,
      decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
    );
  }

  String? emptyValidator(String? value) {
    if(value?.isEmpty == true) {
      return "Обязательное поле";
    }
    return null;
  }
}
