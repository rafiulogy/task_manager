import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/view/screens/verfiy_email/verify_email.dart';
import '../../widgets/custom_button/custom_button.dart';
import '../../widgets/custom_header_text/header_text.dart';
import '../../widgets/custom_input_label/input_label.dart';
import '../../widgets/custom_pass_field/password_field.dart';
import '../../widgets/custom_sub_text/sub_text.dart';
import '../../widgets/custom_textfield/custom_textfield.dart';
import '../log_in/log_in.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool passwordVisible = false;
  bool confirmPasswordVisible = false;
  bool agreeTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderText(text: "Create Your Account", FontSize: 24.sp),
              SizedBox(height: 8.h),
              const SubText(
                text: "Join Task Manager today — organize better, work smarter, and stay in control of your day.",
              ),
              SizedBox(height: 24.h),

              InputLabel(label: "First Name", fontSize: 14.sp),
              SizedBox(height: 6.h),
              CustomTextField(
                controller: firstNameController,
                hintText: "e.g. Kristin",
              ),

              SizedBox(height: 16.h),
              InputLabel(label: "Last Name", fontSize: 14.sp),
              SizedBox(height: 6.h),
              CustomTextField(
                controller: lastNameController,
                hintText: "e.g. Cooper",
              ),

              SizedBox(height: 16.h),
              InputLabel(label: "Email Address", fontSize: 14.sp),
              SizedBox(height: 6.h),
              CustomTextField(
                controller: emailController,
                hintText: "e.g. kristin.cooper@example.com",
              ),

              SizedBox(height: 16.h),
              InputLabel(label: "Address", fontSize: 14.sp),
              SizedBox(height: 6.h),
              CustomTextField(
                controller: addressController,
                hintText: "e.g. 1234 Elm Street, Springfield, IL",
              ),

              SizedBox(height: 16.h),
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
              Row(
                children: [
                  Checkbox(
                    value: agreeTerms,
                    onChanged: (value) {
                      setState(() {
                        agreeTerms = value!;
                      });
                    },
                    activeColor: AppColors.PrimaryColor,
                  ),
                  Expanded(
                    child: Text(
                      "I agree to the Terms & Conditions and Privacy Policy.",
                      style: TextStyle(fontSize: 13.sp),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12.h),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.black45)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("OR", style: TextStyle(color: Colors.black54)),
                  ),
                  Expanded(child: Divider(color: Colors.black45)),
                ],
              ),

              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: AppColors.HeaderTextColor, fontSize: 14.sp),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() =>  LogIn());
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: AppColors.PrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h),
              FullLengthButton(
                title: "Continue",
                onPressed: () {
                  // Handle continue logic here
                 Get.to(VerifyEmail());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
