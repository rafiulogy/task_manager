import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_colors.dart';


class HeaderText extends StatelessWidget {
  final String text;
  final double FontSize;

  HeaderText({super.key, required this.text, required this.FontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: FontSize,
        fontWeight: FontWeight.bold,
        color: AppColors.HeaderTextColor,
      ),
    );
  }
}
