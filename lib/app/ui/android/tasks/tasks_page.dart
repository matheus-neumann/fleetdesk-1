import 'package:dotted_border/dotted_border.dart';
import 'package:fleetdesk/app/controller/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:fleetdesk/app/controller/create_account/create_account_controller.dart';
import 'package:fleetdesk/app/controller/tasks/tasks_controller.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/recovery_password/recovery_password_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_logo.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/menu_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/navigation_bottom_bar.dart';
import 'package:fleetdesk/app/ui/android/widgets/tasks_widgets.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:fleetdesk/app/ui/theme/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/controller/login/login_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return GetBuilder<TasksController>(
        init: TasksController.to,
        builder: (_) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
//              child: Icon(Icons.car_rental),
              onPressed: () async {
                var response = await TasksController.to.associatePlate(
                    {"car_license_plate": "AAA1234", "connect": 1});
                final storage = new FlutterSecureStorage();
                await storage.write(
                    key: AppStrings.plate, value: response.toString());
                print(response.toString());
              },
            ),
            bottomNavigationBar: BottomNavBar(currentIndex: 0,),
            backgroundColor: splashColor,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Stack(children: [
                    Container(
                      margin: EdgeInsets.only(left: 16.w, top: 16.h),
                      child: Text(
                        'Tarefas',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26.sp,
                            color: Colors.white,
                            letterSpacing: 0.3.sp),
                      ),
                    ),
                    Container(
                      height: 41.h,
                      width: 328.w,
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 16.w, top: 65.h),
                      child: FlatButton(
                        child: Text(
                          'geolocator',
                        ),
                        onPressed: () {
                          Get.toNamed(Routes.GEOLOCATOR);
                        },
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          height: 122.h,
                        ),
                        TaskContainer(),
                        SizedBox(
                          height: 16.h,
                        ),
                        TaskContainer(),
                        SizedBox(
                          height: 16.h,
                        ),
                        TaskContainer(),
                        SizedBox(
                          height: 16.h,
                        ),
                        TaskContainer(),
                        SizedBox(
                          height: 16.h,
                        ),
                        TaskContainer(),
                        SizedBox(
                          height: 16.h,
                        ),
                        TaskContainer(),
                      ],
                    )
                  ]),
                ),
              ),
            ),
          );
        });
  }
}
