import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/view/screens/edit_profile/edit_profile.dart';
import 'package:task_manager/view/widgets/custom_input_label/input_label.dart';
import 'package:task_manager/view/widgets/my_profile_item/my_profile_item.dart';

import '../../../gen/assets.gen.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(color: AppColors.PrimaryColor, fontSize: 16.sp),
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
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(builder: (_) => const EditProfilePage()),
              );
            },
            child: Container(
              margin: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: AppColors.TextFieldColor,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(6.w),
              child: Icon(
                Icons.edit,
                size: 25.sp,
                color: AppColors.PrimaryColor,
              ),
            ),
          ),
        ],

        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile image horizontally centered
            Center(
              child: Container(
                height: 70.h,
                width: 70.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image:  Assets.images.profileImg.provider(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),

            InputLabel(label: "Mojahid", fontSize: 20.sp),

            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                right: 10.h,
                bottom: 5.h,
                top: 5.h,
              ),
              child: MyProfileItem(
                icon: Icons.person,
                text: "Mojahid Islam",
                onTap: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                right: 10.h,
                bottom: 5.h,
                top: 5.h,
              ),
              child: MyProfileItem(
                icon: Icons.email,
                text: "mojahid@gmail.com",
                onTap: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                right: 10.h,
                bottom: 5.h,
                top: 5.h,
              ),
              child: MyProfileItem(
                icon: Icons.location_on,
                text: "1234 Elm Street, Springfield, IL",
                onTap: () {},
              ),
            ),
            // Add additional widgets below as needed
          ],
        ),
      ),
    );
  }
}
