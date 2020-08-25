import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  var top;
  var bottom;
  var text;
  var navPage;
  var onPressedMethod;
  var textColor;
  var color;

  LoginButton(this.top, this.bottom, this.text, this.navPage,
      {this.onPressedMethod, this.textColor, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 296.w,
      child: RaisedButton(
        color: color ?? red,
        child: Text(
          text,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: 16.sp,
            fontFamily: 'Montserrat',
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: onPressedMethod,
      ),
    );
  }
}
