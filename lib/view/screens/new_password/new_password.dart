import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_manager/view/screens/task_home/task_home.dart';
import 'package:task_manager/view/widgets/custom_button/custom_button.dart';
import 'package:task_manager/view/widgets/custom_pass_field/password_field.dart';

import '../../widgets/custom_header_text/header_text.dart';
import '../../widgets/custom_input_label/input_label.dart';
import '../../widgets/custom_sub_text/sub_text.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {


  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool passwordVisible = false;
  bool confirmPasswordVisible = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                HeaderText(text: "Set Your New Password", FontSize: 24.sp),
                SizedBox(height: 8.h),
                SubText(
                  text:
                      "Create a secure password to protect your account and get started seamlessly!",
                ),
                SizedBox(height: 32.h),

                InputLabel(label: "PassWord", fontSize: 14.sp),
                SizedBox(height: 6.h),
                PasswordField(
                  controller: passwordController,
                  obscureText: !passwordVisible,
                  toggleVisibility: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                ),

                SizedBox(height: 16.h),
                InputLabel(label: "Confirm Password", fontSize: 14.sp),
                SizedBox(height: 6.h),
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


                FullLengthButton(title: "Continue", onPressed: (){

                  Get.to(TaskHome());

                })

              ],
            ),
          ),
        ),
      ),
    );
  }
}
