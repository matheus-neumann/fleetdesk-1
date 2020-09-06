import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TopBarWidget extends StatelessWidget {

  String text;
  var backTo;

  TopBarWidget({this.text, this.backTo});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          height: 67.5.h,
          width: 360.w,
          decoration: BoxDecoration(
              color: appBarColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)))),
      InkWell(
          child: Container(
              margin: EdgeInsets.only(
                  left: 16.w, top: 25.h, bottom: 8.h),
              width: 10.w,
              child: Icon(Icons.arrow_back_ios,
                  color: Color(0xffffffff))),
          onTap: () {
            Get.to(backTo);
          }),
      Container(
        alignment: Alignment.center,
        width: 120.w,
        height: 30.h,
        margin: EdgeInsets.only(
            left: 128.w, top: 19.h, right: 112.w),
        child: FittedBox(
          // TODO - Verify size and position of text
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ]);
  }
}
