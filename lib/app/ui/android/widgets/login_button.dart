import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 296.w,
      margin:
          EdgeInsets.only(top: 481.h, bottom: 111.h, right: 32.w, left: 32.w),
      child: RaisedButton(
        color: red,
        child: Text(
          'Entrar',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () => print("Button Pressed"),
      ),
    );
  }
}
