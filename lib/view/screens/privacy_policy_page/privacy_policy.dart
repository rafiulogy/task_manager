import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/utils/app_colors.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Privacy Policy",
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
              sectionTitle('Privacy Policy – Task Manager App'),
              sectionText(
                  'Your privacy is important to us. This Privacy Policy outlines how the Task Manager App handles your information and protects your data.'),

              sectionTitle('1. Information Collection'),
              sectionText(
                  'The Task Manager App may collect limited information such as your name, email address, and preferences — strictly for the purpose of enhancing your task management experience. We do not collect sensitive personal information unnecessarily.The Task Manager App may collect limited information such as your name, email address, and preferences — strictly for the purpose of enhancing your task management experience. We do not collect sensitive personal information unnecessarily.'),

              sectionTitle('2. Local Storage'),
              sectionText(
                  "Your tasks, subtasks, and user preferences are securely stored in our system or locally on your device (depending on platform settings). This data is used solely to support the app's features like scheduling, notifications, and user customization."),

              sectionTitle('3. No Tracking'),
              sectionText(
                  'We do not use third-party trackers or intrusive analytics tools to monitor your behavior. Any performance monitoring is strictly anonymized and used internally to improve the app experience.'),

              sectionTitle('4. Static Data Display'),
              sectionText(
                  'If the app integrates with external tools (e.g., calendar, cloud storage), those services are governed by their own privacy policies. We do not control or assume responsibility for their data handling practices.'),

              sectionTitle('5. Third-Party Services'),
              sectionText(
                  'We implement industry-standard measures to ensure your information is protected from unauthorized access, alteration, or misuse. This includes encryption, secure servers, and routine maintenance.'),

              sectionTitle('6. Data Security'),
              sectionText(
                  'You retain full control over your account data. You can delete or export your tasks and personal information at any time through your profile settings (if applicable).'),


              sectionTitle('7. Policy Updates'),
              sectionText(
                  'This Privacy Policy may be updated periodically. Any changes will be clearly communicated within the app. Continued use after updates indicates your acceptance of the revised policy.  f you have any questions or concerns regarding privacy, please contact us at support@taskmanagerapp.com.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, bottom: 8.h),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget sectionText(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.black87,
          height: 1.4,
        ),
      ),
    );
  }
}
