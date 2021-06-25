import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/widgets/decoration_functions.dart';

buildTextFormField(String labelText, bool password,
    TextEditingController controller, String type,
    {passwordController}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16.0),
    child: TextFormField(
      
      controller: controller,
      decoration: authInputDecoration(labelText: labelText,
      
      ),
      obscureText: password,
      autocorrect: false,
      keyboardType:
          type == 'email' ? TextInputType.emailAddress : TextInputType.text,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (type == 'email') {
          if (value.trim().isEmpty) {
            return "email can't to be empty";
          }
        }
        return null;
      },
    ),
  );
}
