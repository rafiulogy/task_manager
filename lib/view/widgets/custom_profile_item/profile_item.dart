import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_colors.dart';

class ProfileItem extends StatelessWidget {
  final IconData ?icon;
  final String text;
  final VoidCallback onTap;
  final Color iconColor;
  final Color itemColor; // New optional parameter
  final Color ? textColor;

  const ProfileItem({
    super.key,
     this.icon,
    required this.text,
    required this.onTap,
    this.iconColor = AppColors.PrimaryColor,
    this.itemColor = Colors.white, // Default value
    this.textColor , // Default value
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: itemColor, // Use itemColor instead of fixed Colors.white
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: iconColor),
        title: Text(
          text,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.PrimaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      ),
    );
  }
}
