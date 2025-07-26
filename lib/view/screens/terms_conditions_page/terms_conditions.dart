import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/utils/app_colors.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        title: Text(
          "Account Settings",
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
              sectionTitle('Terms & Conditions'),
              sectionText(
                  'Welcome to the Task Manager App. By accessing or using this application, you agree to the following terms and conditions:'),


              sectionTitle('1. Use of the App'),
              sectionText(
                  'This app is designed to help users create, manage, and track personal or professional tasks efficiently. '
                      'By using the app, you agree to use it responsibly and only for lawful purposes.'),

              sectionTitle('2. Accuracy of Information'),
              sectionText(
                  'All tasks, notes, and other information entered by the user are stored securely. While we strive to '
                      'maintain accurate task management functionality, the app is not responsible for missed deadlines, '
                      'incorrect entries, or user-generated errors.'),

              sectionTitle('3. User Responsibility'),
              sectionText(
                  'Users are solely responsible for managing their tasks, reminders, and any personal or professional '
                      'outcomes related to the completion or non-completion of tasks created within the app.'),

              sectionTitle('4. Data Collection'),
              sectionText(
                  'We respect your privacy. The Task Manager App may collect limited personal data (such as name, '
                      'email, and usage patterns) solely for improving user experience. No data is shared with third parties '
                      'without user consent.'),

              sectionTitle('5. Limitation of Liability'),
              sectionText(
                  'We are not liable for any loss of productivity, missed deadlines, or damages resulting from your use '
                      'of the app. The app is a productivity tool and should be used at your discretion.'),

              sectionTitle('6. Third-Party Links'),
              sectionText(
                  'If the app connects to any third-party tools (e.g., calendar, email), we are not responsible for their '
                      'data policies or service availability. Use of such services is subject to their respective terms.'),

              sectionTitle('7. Changes to Terms'),
              sectionText(
                  'We reserve the right to update these Terms & Conditions at any time. Continued use of the app following '
                      'any changes will constitute your acceptance of those revised terms.'),
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
