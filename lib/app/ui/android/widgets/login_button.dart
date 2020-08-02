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

  LoginButton(this.top, this.bottom, this.text, this.navPage);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 296.w,
      margin:
          EdgeInsets.only(top: top, bottom: bottom, right: 32.w, left: 32.w),
      child: RaisedButton(
        color: red,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          Navigator.push(
//                        print('Done');
            context,
            MaterialPageRoute(
                builder: (context) => navPage),
          );
        },
      ),
    );
  }
}
