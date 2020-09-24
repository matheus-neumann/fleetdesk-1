import 'package:fleetdesk/app/controller/controller.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
    return GetBuilder<Controller>(
        init: Controller.to,
        builder: (_) {
          return SafeArea(
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
                                borderRadius: new BorderRadius.circular(20.0)),
                            onPressed: () => {
//                                  Get.put(Controller()),
                              Controller.to.indexTasks = 0,
                              if (Controller.to.indexTasks == 0)
                                {
                                  activeColorButton = Colors.white,
                                  activeColorText = red,
                                  partialColorButton = Color(0xff1D2634),
                                  partialColorText =
                                      Colors.white.withOpacity(0.3),
                                  doneColorButton = Color(0xff1D2634),
                                  doneColorText = Colors.white.withOpacity(0.3)
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
                                borderRadius: new BorderRadius.circular(20.0)),
                            onPressed: () => {
//                                  Get.put(Controller()),
                              Controller.to.indexTasks = 1,
                              if (Controller.to.indexTasks == 1)
                                {
                                  partialColorButton = Colors.white,
                                  partialColorText = red,
                                  doneColorButton = Color(0xff1D2634),
                                  doneColorText = Colors.white.withOpacity(0.3),
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
                                borderRadius: new BorderRadius.circular(20.0)),
                            onPressed: () => {
//                                  Get.put(Controller()),
                              Controller.to.indexTasks = 2,
                              if (Controller.to.indexTasks == 2)
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
                                  doneColorText = Colors.white.withOpacity(0.3)
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
                ListView.builder(
                    //scrollDirection: Axis.horizontal,
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Controller
                          .to.childrenTasks[Controller.to.indexTasks];
                    })
              ]),
            ),
          );
        });
  }
}
