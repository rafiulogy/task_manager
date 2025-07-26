import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/view/widgets/custom_input_label/input_label.dart';
import 'package:task_manager/view/widgets/custom_pass_field/password_field.dart';

import '../../widgets/custom_button/custom_button.dart';
import '../../widgets/cutsom_alert_dialog/custom_alert_dialog.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController typePassword = TextEditingController();


  bool passwordVisible = false;
  bool confirmPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Change Password",
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
      
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              InputLabel(label: "Type Password", fontSize: 14),
              SizedBox(height: 10.h),
              PasswordField(
                controller: confirmPasswordController,
                obscureText: !confirmPasswordVisible,
                toggleVisibility: () {
                  setState(() {
                    confirmPasswordVisible = !confirmPasswordVisible;
                  });
                },
              ),

              SizedBox(height: 12.h),
              InputLabel(label: "New Password", fontSize: 14),
              SizedBox(height: 10.h),
              PasswordField(
                controller: newPasswordController,
                obscureText: !confirmPasswordVisible,
                toggleVisibility: () {
                  setState(() {
                    confirmPasswordVisible = !confirmPasswordVisible;
                  });
                },
              ),

              SizedBox(height: 12.h),

              InputLabel(label: "New Confirm Password", fontSize: 14),
              SizedBox(height: 10.h),
              PasswordField(
                controller: confirmPasswordController,
                obscureText: !confirmPasswordVisible,
                toggleVisibility: () {
                  setState(() {
                    confirmPasswordVisible = !confirmPasswordVisible;
                  });
                },
              ),

              SizedBox(height: 25.h),
              FullLengthButton(title: "Update", onPressed: (){

                showDialog(
                  context: context,
                  builder: (context) => CustomAlertDialog(
                    title: "Warning",
                    description: "Are you sure you want to update your password?",
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



              })


            ],
          ),
        ),
      ),


    );
  }
}
