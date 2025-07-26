import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FullLengthButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color textColor;

  const FullLengthButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor = AppColors.PrimaryColor,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14),
        elevation: 2,
        minimumSize: Size(double.infinity, 44.h),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}