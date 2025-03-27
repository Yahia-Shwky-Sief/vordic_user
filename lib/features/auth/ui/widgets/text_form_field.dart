import 'package:flutter/material.dart';

Widget textFormField({
  required String hintText,
  required TextEditingController controller,
  required TextInputType keyboardType,
  required bool obscureText,
  required String? Function(String?)? validator,
}) {
  return SizedBox(
    height: 60,
    child: TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
