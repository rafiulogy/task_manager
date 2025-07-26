import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/view/widgets/custom_textfield/custom_textfield.dart';
import 'package:task_manager/view/widgets/custom_input_label/input_label.dart';
import 'package:task_manager/view/widgets/custom_button/custom_button.dart';

import '../../../gen/assets.gen.dart';
import '../../widgets/cutsom_alert_dialog/custom_alert_dialog.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController addressController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
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

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile image with camera icon
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                        image:Assets.images.profileImg.provider(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.PrimaryColor,
                    ),
                    padding: EdgeInsets.all(6),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),

            // First Name
            InputLabel(label: "First Name", fontSize: 14.sp),
            SizedBox(height: 8.h),
            CustomTextField(
              controller: firstNameController,
              hintText: "e.g. Kristin",
              textFieldColor: AppColors.TextFieldColor,
            ),
            SizedBox(height: 16.h),

            // Last Name
            InputLabel(label: "Last Name", fontSize: 14.sp),
            SizedBox(height: 8.h),
            CustomTextField(
              controller: lastNameController,
              hintText: "e.g. Cooper",
              textFieldColor: AppColors.TextFieldColor,
            ),
            SizedBox(height: 16.h),

            // Email Address
            InputLabel(label: "Email Address", fontSize: 14.sp),
            SizedBox(height: 8.h),
            CustomTextField(
              controller: emailController,
              hintText: "e.g. kristin.cooper@example.com",
              textFieldColor: AppColors.TextFieldColor,
            ),
            SizedBox(height: 16.h),

            // Address
            InputLabel(label: "Address", fontSize: 14.sp),
            SizedBox(height: 8.h),
            CustomTextField(
              controller: addressController,
              hintText: "e.g. 1234 Elm Street, Springfield, IL",
              textFieldColor: AppColors.TextFieldColor,
            ),
            SizedBox(height: 30.h),

            // Update Button
            FullLengthButton(
              title: "Update",
              backgroundColor: AppColors.PrimaryColor,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => CustomAlertDialog(
                    title: "Warning",
                    description: "Are you sure you want to update your profile information?",
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
          ],
        ),
      ),
    );
  }
}
