import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/view/screens/account_settings/account_settings.dart';
import 'package:task_manager/view/screens/help_support_page/help_support.dart';
import 'package:task_manager/view/screens/my_profile/my_profile.dart';
import 'package:task_manager/view/screens/privacy_policy_page/privacy_policy.dart';
import 'package:task_manager/view/widgets/custom_input_label/input_label.dart';
import 'package:task_manager/view/widgets/custom_profile_header/profile_header.dart';
import 'package:task_manager/view/widgets/custom_profile_item/profile_item.dart';
import 'package:task_manager/view/widgets/my_profile_item/my_profile_item.dart';

import '../../widgets/cutsom_alert_dialog/custom_alert_dialog.dart';
import '../terms_conditions_page/terms_conditions.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ProfileHeader(
              backgroundPath: "assets/images/profile_bg.png",
              profileImagePath: "assets/images/profile_img.png",
            ),
            SizedBox(height: 50),

            Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, top: 10.h),
              child: ProfileItem(
                icon: Icons.person,
                text: "My Profile",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => MyProfile()),
                  );
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, top: 10.h),
              child: ProfileItem(
                icon: Icons.settings,
                text: "Account Settings",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AccountSettings()),
                  );
                },
              ),
            ),

            SizedBox(height: 10.h),

            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: InputLabel(label: "More", fontSize: 16.sp),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, top: 10.h),
              child: ProfileItem(
                icon: Icons.note_alt_sharp,
                text: "Terms & Conditions",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => TermsAndConditionsPage()),
                  );
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, top: 10.h),
              child: ProfileItem(
                icon: Icons.privacy_tip_outlined,
                text: "Privacy Policy",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => PrivacyPolicy()),
                  );
                },
              ),
            ),

            // Help/Support item
            Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, top: 10.h),
              child: ProfileItem(
                icon: Icons.question_mark_outlined,
                text: "Help/Support",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => HelpSupport()),
                  );
                },
              ),
            ),

            // Log Out item
            Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, top: 10.h),
              child: MyProfileItem(
                icon: Icons.logout,
                text: "Log Out",
                onTap: () {


                  showDialog(
                    context: context,
                    builder: (context) => CustomAlertDialog(
                      title: "Warning",
                      description: "Are you sure you want to log out of your account?",
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
            ),
          ],
        ),
      ),
    );
  }
}
