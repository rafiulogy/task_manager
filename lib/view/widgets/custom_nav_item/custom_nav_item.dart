
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/utils/app_colors.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const NavItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double lift = -10.h;

    // circle behind the icon when selected
    final circleIcon = Container(
      width: 49.w,
      height: 49.h,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.PrimaryColor : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: 30.sp,
        color: isSelected ? Colors.white : Colors.black,
      ),
    );

    // build the column, only adding the label if not selected
    Widget content = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        circleIcon,
        if (!isSelected) ...[
          SizedBox(height: 4.h),
          Text(
            label,
            style: TextStyle(fontSize: 10.sp, color: Colors.black),
          ),
        ],
      ],
    );

    // lift up the selected item
    if (isSelected) {
      content = Transform.translate(
        offset: Offset(0, lift),
        child: content,
      );
    }

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: content,
    );
  }
}
