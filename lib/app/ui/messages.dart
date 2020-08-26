import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'android/widgets/navigation_bottom_bar.dart';

class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      bottomNavigationBar: BottomNavBar(currentIndex: 1,),
      backgroundColor: splashColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: 312.w,
                    height: 137.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.sp),
                          topLeft: Radius.circular(20.sp),
                          bottomLeft: Radius.circular(20.sp),
                        )),
                  ),
                  Container(
                    width: 312.w,
                    height: 137.h,
                    decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.sp),
                          topLeft: Radius.circular(20.sp),
                          bottomRight: Radius.circular(20.sp),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
