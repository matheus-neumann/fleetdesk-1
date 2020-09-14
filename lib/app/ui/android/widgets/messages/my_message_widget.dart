import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyMessageWidget extends StatelessWidget {
  String myName;
  String message;
  String imagePath;

  MyMessageWidget({
    this.myName,
    this.message,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(left: 38.w),
      width: 312.w,
      //height: 137.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.sp),
            topLeft: Radius.circular(20.sp),
            bottomLeft: Radius.circular(20.sp),
          )),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.w, top: 10.h),
            child: Row(
              children: [
                SvgPicture.asset(
                  imagePath,
                  color: black,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  myName,
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 9.h,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 10.w),
            child: Text(
              message,
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
        ],
      ),
    );
  }
}
