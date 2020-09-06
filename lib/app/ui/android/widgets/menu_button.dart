import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MenuButton extends StatelessWidget {
  var top;
  var left;
  var bottom;
  var right;
  var text;
  var navPage;
  var icon;

  MenuButton(
      {this.top,
      this.right,
      this.left,
      this.bottom,
      this.icon,
      this.text,
      this.navPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                top: BorderSide.none,
                left: BorderSide.none,
                right: BorderSide.none,
                bottom: BorderSide(width: 1.w, color: Color(0xFFF2F2F2)),
              )),
          height: 50.h,
          width: 295.w,
          margin: EdgeInsets.only(
              left: left, top: top, right: right, bottom: bottom
          ),
          child: Row(children: [
            Container(
              height: 24.h,
              width: 24.w,
              //margin: EdgeInsets.only(left: 2.w, top: 1.h, right: 273.w, bottom: 10.h),
              child: Icon(
                icon,
                color: red,
                size: 24,
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Container(
              height: 50.h,
              width: 133.w,
              //margin: EdgeInsets.only(left: 34.w, right: 160.w, bottom: 11.h),
              child: FittedBox(
                fit: BoxFit.none,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    text,
                    style: TextStyle(
                      color: black,
                      fontSize: 16.sp,
                      fontFamily: 'Montserrat',
                    ),
                  )),
            ),
            SizedBox(
              width: 116.w,
            ),
            Container(
                width: 10.w,
                child: Icon(Icons.arrow_forward_ios, color: Color(0xff979797)))
          ]),
        ),
        onTap: () {
          print('teste');
          Get.to(navPage);
        });
  }
}
