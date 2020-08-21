import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppButton extends StatelessWidget {

  String text;
  var navPage;
  var onPressedMethod;
  var textColor;
  var color;
  double width;

  AppButton({this.text, this.textColor, this.color, this.navPage, this.onPressedMethod, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: width,
      child: RaisedButton(
        color: color,
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        onPressed: navPage,
      ),
    );
  }
}
