import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_manager/view/screens/otp_verification/otp_verification.dart';

import '../../../utils/app_colors.dart';
import '../../widgets/custom_button/custom_button.dart';
import '../../widgets/custom_header_text/header_text.dart';
import '../../widgets/custom_input_label/input_label.dart';
import '../../widgets/custom_sub_text/sub_text.dart';
import '../../widgets/custom_textfield/custom_textfield.dart';
import '../sign_up/sign_up.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {

  final TextEditingController emailController = TextEditingController();
  bool obscurePassword = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.BackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText(text: "Verify Your Email", FontSize: 24.sp),
                  SizedBox(height: 8.h),
                  SubText(
                    text: "Stay productive and take control of your tasks.",
                  ),
                  SizedBox(height: 32.h),

                  InputLabel(label: "Email Address", fontSize: 14.sp),
                  SizedBox(height: 8.h),
                  CustomTextField(
                    controller: emailController,
                    hintText: 'michelle.rivera@example.com',
                  ),





                  SizedBox(height: 30.h),
                  SizedBox(
                    width: double.infinity.w,
                    height: 50.h,
                    child: FullLengthButton(
                      title: "Send OTP",
                      onPressed: (){

                        Get.to(OtpVerificationScreen());

                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
}
