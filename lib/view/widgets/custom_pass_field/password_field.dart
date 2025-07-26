import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_colors.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final VoidCallback toggleVisibility;

  const PasswordField({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.toggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: TextStyle(color: AppColors.SubTextColor),
      decoration: InputDecoration(
        hintText: "Enter password",
        hintStyle: TextStyle(color: AppColors.SubTextColor),
        filled: true,
        fillColor: AppColors.TextFieldColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            obscureText ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: toggleVisibility,
        ),
      ),
    );
  }
}
