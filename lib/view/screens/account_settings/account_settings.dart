import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/view/widgets/custom_profile_item/profile_item.dart';
import '../../widgets/cutsom_alert_dialog/custom_alert_dialog.dart';
import '../change_password/change_password_page.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Account Settings",
          style: TextStyle(color: AppColors.HeaderTextColor, fontSize: 16.sp),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: AppColors.TextFieldColor,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(6.w),
            child: Icon(
              Icons.chevron_left,
              size: 25.sp,
              color: AppColors.PrimaryColor,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.h),
            child: ProfileItem(
              icon: Icons.lock,
              text: "Change Password",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ChangePasswordPage(),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.h),
            child: ProfileItem(
              iconColor: Colors.red,
              icon: Icons.delete_forever,
              text: "Delete Account",
              textColor: Colors.red,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => CustomAlertDialog(
                    title: "Warning",
                    description: "Are you sure you want to permanently delete your account? This action cannot be undone.",
                    icon: Icon(Icons.warning_amber_rounded, size: 40, color: Colors.amber),
                    confirmText: "Confirm",
                    cancelText: "Cancel",
                    onConfirm: () {
                      // Your confirm logic
                      Navigator.pop(context);
                    },
                    onCancel: () {
                      // Your cancel logic
                      Navigator.pop(context);
                    },
                  ),
                );


              },
            ),
          ),
        ],
      ),
    );
  }
}
