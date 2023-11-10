import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;
  final bool showError;

  const MyTextField({
    super.key,
    required this.hintText,
    required this.obsecureText,
    required this.controller,
    this.showError = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        hintText: hintText,
        errorText: showError ? 'Invalid $hintText' : null,
      ),
      obscureText: obsecureText,
    );
  }
}
