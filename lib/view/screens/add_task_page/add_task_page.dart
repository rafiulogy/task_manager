import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/utils/app_colors.dart';
import 'package:task_manager/view/widgets/custom_button/custom_button.dart';
import 'package:task_manager/view/widgets/custom_input_label/input_label.dart';
import 'package:task_manager/view/widgets/custom_textfield/custom_textfield.dart';

import '../../widgets/cutsom_alert_dialog/custom_alert_dialog.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: InkWell(
            onTap: () {
            },
            borderRadius: BorderRadius.circular(30.r),
            child: Container(
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
        ),
        title: Text(
          "Add Task",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputLabel(label: "Task Title", fontSize: 14.sp),
            SizedBox(height: 8),

            CustomTextField(
              controller: titleController,
              hintText: "e.g. Design Landing Page Header",
            ),
            SizedBox(height: 16),

            InputLabel(label: "Description", fontSize: 14.sp),
            SizedBox(height: 8),

            CustomTextField(
              controller: titleController,
              hintText:
              "e.g. Create a clean, responsive header section with logo, navigation links, and a clear call-to-action button.",
              maxlines: 4,
            ),
            SizedBox(height: 24),

            FullLengthButton(title: "Save Task", onPressed: () {

              showDialog(
                context: context,
                builder: (context) => CustomAlertDialog(
                  title: "Warning",
                  description: "Are you sure you want to Add this task?",
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


            }),
          ],
        ),
      ),
    );
  }
}
