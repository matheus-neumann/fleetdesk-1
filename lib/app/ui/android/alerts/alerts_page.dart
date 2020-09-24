import 'package:fleetdesk/app/controller/controller.dart';
import 'package:fleetdesk/app/ui/android/widgets/alerts_widgets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AlertsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return GetBuilder<Controller>(
        init: Controller.to,
        builder: (_) {
      return SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(left: 16.w, top: 16.h),
                  child: Row(
                    children: [
                      Text(
                        'Alertas',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26.sp,
                            color: Colors.white,
                            letterSpacing: 0.3.sp),
                      ),
                      SizedBox(
                        width: 122.w,
                      ),
                      Container(
                        height: 23.h,
                        width: 108.w,
                        child: RaisedButton(
                            onPressed: () => print('apagar tudo'),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.sp)),
                          textColor: red,
                          child: FittedBox(
                            child: Text(
                              'Apagar tudo',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 21.h,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 16.w),
                  child: Text(
                    'Hoje, 14 de Julho de 2020',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white
                    ),
                  ),
                ),
              SizedBox(
                height: 14.h,
              ),
                AlertsContainer(),
                SizedBox(
                  height: 12.h,
                ),
                AlertsContainer(),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 16.w),
                  child: Text(
                    'Ontem, 13 de Julho de 2020',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                AlertsContainer(),
                SizedBox(
                  height: 12.h,
                ),
                AlertsContainer(),
              ]),
            ),
          ),
        );
    });
//      Scaffold(
//      backgroundColor: splashColor,
//      bottomNavigationBar: BottomNavBar(currentIndex: 2),
//      body: Column(
//        children: [
//          Container(
//            margin: EdgeInsets.only(left: 16.w, top: 16.h),
//            child: Text(
//              'Alertas',
//              style: TextStyle(
//                  fontWeight: FontWeight.bold,
//                  fontSize: 26.sp,
//                  color: Colors.white,
//                  letterSpacing: 0.3.sp),
//            ),
//          ),
//        ],
//      ),
//    );
  }
}
