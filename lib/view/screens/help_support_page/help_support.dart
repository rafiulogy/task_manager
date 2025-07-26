import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/view/widgets/custom_input_label/input_label.dart';
import 'package:task_manager/view/widgets/custom_profile_item/profile_item.dart';

import '../../widgets/contact_card/contact_card.dart';

class HelpSupport extends StatelessWidget {
  const HelpSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help/Support",
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
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.h),
              InputLabel(label: "FAQs", fontSize: 16.sp),

              Padding(
                padding: EdgeInsets.only(
                  top: 5.h,
                  bottom: 5.h,
                  left: 10.h,
                  right: 10.h,
                ),
                child: ProfileItem(
                  text: "How do I create a new task?",
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.h,
                  bottom: 5.h,
                  left: 10.h,
                  right: 10.h,
                ),
                child: ProfileItem(
                  text: "How can I view task details?",
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.h,
                  bottom: 5.h,
                  left: 10.h,
                  right: 10.h,
                ),
                child: ProfileItem(
                  text: "Can I mark a task as favorite or important?",
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.h,
                  bottom: 5.h,
                  left: 10.h,
                  right: 10.h,
                ),
                child: ProfileItem(
                  text: "How do I edit or delete a task?",
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.h,
                  bottom: 5.h,
                  left: 10.h,
                  right: 10.h,
                ),
                child: ProfileItem(
                  text: "Is my data secure?",
                  onTap: () {},
                ),
              ),
              SizedBox(height: 15.h),
              InputLabel(label: "Need More Help?", fontSize: 16.sp),
              SizedBox(height: 10.h),
              ContactCard(),
            ],
          ),
        ),
      ),
    );
  }
}
