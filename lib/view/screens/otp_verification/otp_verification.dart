import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/view/screens/new_password/new_password.dart';
import '../../widgets/custom_button/custom_button.dart';
import '../../widgets/custom_header_text/header_text.dart';
import '../../widgets/custom_sub_text/sub_text.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  String otpCode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderText(text: "6-digit code", FontSize: 28.sp),
                SizedBox(height: 8.h),
                const SubText(
                  text: "Please enter the code we've sent to michelle.rivera@example.com",
                ),
                SizedBox(height: 32.h),
        
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  onChanged: (value) {
                    setState(() {
                      otpCode = value;
                    });
                  },
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 40.h,
                    fieldWidth: 35.w,
                    activeFillColor: const Color(0xFFF6FFED),
                    inactiveFillColor: const Color(0xFFE3ECD6),
                    selectedFillColor: (AppColors.PrimaryColor),
                    activeColor: Colors.transparent,
                    inactiveColor: Colors.transparent,
                    selectedColor: Colors.transparent,
                  ),
                  textStyle: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.PrimaryColor, // ✅ changed text color here
                  ),
                  keyboardType: TextInputType.number,
                  enableActiveFill: true,
                ),
        
                SizedBox(height: 32.h),
                FullLengthButton(
                  title: "Confirm",
                  onPressed: () {
                    Get.to(NewPassword());

                  },
                  backgroundColor: AppColors.PrimaryColor,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
