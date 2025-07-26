import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_manager/view/screens/task_home/task_home.dart';
import '../../widgets/custom_button/custom_button.dart';
import '../../widgets/custom_header_text/header_text.dart';
import '../../widgets/custom_input_label/input_label.dart';
import '../../widgets/custom_pass_field/password_field.dart';
import '../../widgets/custom_sub_text/sub_text.dart';
import '../../widgets/custom_textfield/custom_textfield.dart';
import '../sign_up/sign_up.dart';
import 'package:task_manager/utils/app_colors.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;
  bool rememberMe = false;

  void handleLogin() {
    // Get.offAll(() => const TaskManagerHome());
  }
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Safe to navigate or update controllers here
      Get.off(() => LogIn());
    });
  }


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
                  HeaderText(text: "Welcome Back!", FontSize: 30.sp),
                  SizedBox(height: 8.h),
                  SubText(
                    text: "Stay productive and take control of your tasks.",
                  ),
                  SizedBox(height: 32.h),

                  InputLabel(label: "Email", fontSize: 14.sp),
                  SizedBox(height: 8.h),
                  CustomTextField(
                    controller: emailController,
                    hintText: 'michelle.rivera@example.com',
                  ),

                  SizedBox(height: 20.h),

                  InputLabel(label: "Password", fontSize: 14.sp),
                  SizedBox(height: 8.h),
                  PasswordField(
                    controller: passwordController,
                    obscureText: obscurePassword,
                    toggleVisibility: () {
                      setState(() {
                        obscurePassword = !obscurePassword;
                      });
                    },
                  ),

                  Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        activeColor: AppColors.PrimaryColor,
                        checkColor: Colors.white,
                        side: BorderSide(
                          color: AppColors.PrimaryColor,
                          width: 2.w,
                        ),
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value!;
                          });
                        },
                      ),

                      Text(
                        "Remember me",
                        style: TextStyle(color: AppColors.SubTextColor),
                      ),
                    ],
                  ),

                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.black54)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "OR",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                      Expanded(child: Divider(color: Colors.black54)),
                    ],
                  ),

                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: TextStyle(
                          color: AppColors.HeaderTextColor,
                          fontSize: 14.sp,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(() => SignUpScreen());
                        },
                        child: TextButton(

                          onPressed: () {
                            Get.to(() => SignUpScreen());
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: AppColors.PrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30.h),
                  SizedBox(
                    width: double.infinity.w,
                    height: 50.h,
                    child: FullLengthButton(title: "Log in", onPressed: () {

                      Get.to(TaskHome());

                    }),
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
