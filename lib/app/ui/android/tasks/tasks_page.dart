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
  Color partialColorButton = Colors.white;
  Color partialColorText = red;
  Color doneColorButton = Color(0xff1D2634);
  Color doneColorText = Colors.white.withOpacity(0.3);
  Color activeColorButton = Color(0xff1D2634);
  Color activeColorText = Colors.white.withOpacity(0.3);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return GetBuilder<TasksController>(
        init: TasksController.to,
        builder: (_) {
          return SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Column(children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 16.w, top: 16.h),
                      child: Text(
                        'Tarefas',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26.sp,
                            color: Colors.white,
                            letterSpacing: 0.3.sp),
                      ),
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    Container(
                      height: 32.h,
                      width: 328.w,
                      decoration: BoxDecoration(
                          color: Color(0xff1D2634),
                          borderRadius: BorderRadius.circular(20.sp)),
                      child: Row(
                        children: [
                          Container(
                              height: 32.h,
                              width: 104.w,
                              decoration: BoxDecoration(
                                  //color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.sp)),
                              child: FlatButton(
                                color: activeColorButton,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(20.0)),
                                onPressed: () => {
                                  Get.put(TasksController()),
                                  TasksController.to.indexTasks = 0,
                                  if (TasksController.to.indexTasks == 0)
                                    {
                                      activeColorButton = Colors.white,
                                      activeColorText = red,
                                      partialColorButton = Color(0xff1D2634),
                                      partialColorText =
                                          Colors.white.withOpacity(0.3),
                                      doneColorButton = Color(0xff1D2634),
                                      doneColorText =
                                          Colors.white.withOpacity(0.3)
                                    }
                                  else
                                    {
                                      activeColorButton = Color(0xff1D2634),
                                      activeColorText =
                                          Colors.white.withOpacity(0.3)
                                    },
                                  _.update(),
                                },
                                child: Text(
                                  'Ativas',
                                  style: TextStyle(
                                      fontSize: 14.sp, color: activeColorText),
                                ),
                              )),
                          Container(
                              height: 32.h,
                              width: 104.w,
                              decoration: BoxDecoration(
                                  //color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.sp)),
                              child: FlatButton(
                                color: partialColorButton,
                                splashColor: Color(0xff1D2634),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(20.0)),
                                onPressed: () => {
                                  Get.put(TasksController()),
                                  TasksController.to.indexTasks = 1,
                                  if (TasksController.to.indexTasks == 1)
                                    {
                                      partialColorButton = Colors.white,
                                      partialColorText = red,
                                      doneColorButton = Color(0xff1D2634),
                                      doneColorText =
                                          Colors.white.withOpacity(0.3),
                                      activeColorButton = Color(0xff1D2634),
                                      activeColorText =
                                          Colors.white.withOpacity(0.3)
                                    }
                                  else
                                    {
                                      partialColorButton = Color(0xff1D2634),
                                      partialColorText =
                                          Colors.white.withOpacity(0.3)
                                    },
                                  _.update()
                                },
                                child: Text(
                                  'Parciais',
                                  style: TextStyle(
                                      fontSize: 14.sp, color: partialColorText),
                                ),
                              )),
                          Container(
                              height: 32.h,
                              width: 120.w,
                              decoration: BoxDecoration(
                                  //color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.sp)),
                              child: FlatButton(
                                color: doneColorButton,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(20.0)),
                                onPressed: () => {
                                  Get.put(TasksController()),
                                  TasksController.to.indexTasks = 2,
                                  if (TasksController.to.indexTasks == 2)
                                    {
                                      doneColorButton = Colors.white,
                                      doneColorText = red,
                                      partialColorButton = Color(0xff1D2634),
                                      partialColorText =
                                          Colors.white.withOpacity(0.3),
                                      activeColorButton = Color(0xff1D2634),
                                      activeColorText =
                                          Colors.white.withOpacity(0.3)
                                    }
                                  else
                                    {
                                      doneColorButton = Color(0xff1D2634),
                                      doneColorText =
                                          Colors.white.withOpacity(0.3)
                                    },
                                  _.update()
                                },
                                child: Text(
                                  'Concluídas',
                                  style: TextStyle(
                                      fontSize: 14.sp, color: doneColorText),
                                ),
                              )),
                        ],
                      ),
//                      child: FlatButton(
//                        child: Text(
//                          'geolocator',
//                        ),
//                        onPressed: () {
//                          Get.toNamed(Routes.GEOLOCATOR);
//                        },
//                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SingleChildScrollView(
                      child: ListView.builder(
                          //scrollDirection: Axis.horizontal,
                          itemCount: 1,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return TasksController.to
                                .childrenTasks[TasksController.to.indexTasks];
                          }),
                    )
                  ]),
                ),
              ),
            );
        });
  }
}
