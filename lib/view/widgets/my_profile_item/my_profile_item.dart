import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/utils/app_colors.dart';

class MyProfileItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final Color iconColor;
  final Color? textColor; // new optional parameter
  final Color? trailingIconColor; // new optional parameter

  const MyProfileItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
    this.iconColor = AppColors.PrimaryColor,
    this.textColor, // nullable optional
    this.trailingIconColor, // nullable optional
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: iconColor, size: 20.sp),
            Container(
              width: 1.5,
              height: 24,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              color: Colors.grey.shade400,
            ),
          ],
        ),
        title: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: textColor ?? Colors.black, // use textColor if provided
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: trailingIconColor ?? AppColors.PrimaryColor, // use trailingIconColor if provided
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 4.0,
        ),
      ),
    );
  }
}
