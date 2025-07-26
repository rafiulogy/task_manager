import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_colors.dart';

class InputLabel extends StatelessWidget {
  final String label;
  final double fontSize;

  const InputLabel({super.key, required this.label, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: AppColors.HeaderTextColor,
      ),
    );
  }
}
