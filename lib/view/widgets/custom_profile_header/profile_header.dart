import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeader extends StatelessWidget {
  final String backgroundPath;
  final String profileImagePath;

  const ProfileHeader({
    Key? key,
    required this.backgroundPath,
    required this.profileImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Background image with rounded bottom corners
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
          child: Image.asset(
            backgroundPath,
            height: 158.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),

        // Positioned CircleAvatar
        Positioned(
          bottom: -50.h,

          left: 0,
          right: 0,
          child:CircleAvatar(
            radius: 70,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset(
                profileImagePath,
                width: 140,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
          )

        ),
      ],
    );
  }
}
