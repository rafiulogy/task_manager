import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/utils/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../widgets/custom_task_card/task_card.dart';
import '../edit_task_screen/edit_task.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User info
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24.r,
                  backgroundImage: Assets.images.profileImg.provider(),

                ),
                SizedBox(width: 12.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Mojahid',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.HeaderTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Welcome to Task Manager',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.HeaderTextColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          // Section title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              'My Tasks',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.HeaderTextColor,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          // Task cards (static widgets)
          Expanded(
            child: ListView(
              children: [
                TaskCard(
                  title: 'Design Landing Page Header',
                  desc:
                      'Create a clean, responsive header section with logo, navigation links, and a clear call-to-action button.',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => EditTaskPage()),
                    );
                  },
                ),
                TaskCard(
                  title: 'Prepare Terms & Privacy Pages',
                  desc:
                      'Create UI layouts for Terms & Conditions and Privacy Policy using scrollable content and soft brand styling.',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => EditTaskPage()),
                    );
                  },
                ),

                TaskCard(
                  title: 'Design Landing Page Header',
                  desc:
                      'Create a clean, responsive header section with logo, navigation links, and a clear call-to-action button.',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => EditTaskPage()),
                    );
                  },
                ),

                TaskCard(
                  title: 'Design Landing Page Header',
                  desc:
                      'Create a clean, responsive header section with logo, navigation links, and a clear call-to-action button.',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => EditTaskPage()),
                    );
                  },
                ),
                TaskCard(
                  title: 'Design Landing Page Header',
                  desc:
                      'Create a clean, responsive header section with logo, navigation links, and a clear call-to-action button.',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => EditTaskPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
