import 'package:dotted_border/dotted_border.dart';
import 'package:fleetdesk/app/controller/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/recovery_password/recovery_password_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_logo.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/menu_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/tasks_widgets.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/controller/login/login_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
    backgroundColor: splashColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Stack(
              children: [
                Container(
              margin: EdgeInsets.only(left: 16.w, top: 16.h),
              child: Text(
                'Tarefas',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.sp,
                  color: Colors.white,
                  letterSpacing: 0.3.sp
                ),
              ),
                ),
                Container(
                  height: 41.h,
                  width: 328.w,
                  color: black,
                  margin: EdgeInsets.only(left: 16.w, top: 65.h),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 122.h,
                    ),
                    TaskContainer(),
                    SizedBox(height: 16.h,),
                    TaskContainer(),
                    SizedBox(height: 16.h,),
                    TaskContainer(),
                    SizedBox(height: 16.h,),
                    TaskContainer(),
                    SizedBox(height: 16.h,),
                    TaskContainer(),
                    SizedBox(height: 16.h,),
                    TaskContainer(),
                  ],
                )
            ]),
          ),
        ),
      ),
    );
  }
}