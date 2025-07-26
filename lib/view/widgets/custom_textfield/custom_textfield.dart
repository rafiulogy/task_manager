import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Color ?textFieldColor;
  final int? maxlines;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,  this.textFieldColor, this.maxlines,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      controller: controller,
      style: TextStyle(
        color: AppColors.SubTextColor,
      ),
      decoration: InputDecoration(

        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.SubTextColor),
        filled: true,
        fillColor: AppColors.TextFieldColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
