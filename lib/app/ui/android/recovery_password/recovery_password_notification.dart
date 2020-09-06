import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecoveryPasswordNotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Stack(
              children: <Widget>[
                Container(
                  child: Container(
                    width: 224.w,
                    height: 50.h,
                    margin: EdgeInsets.only(
                        top: 134.h, left: 68.w, bottom: 149.h, right: 68.w),
                    child: Image.asset(AppAssets.fleetdeskLogo),
                  ),
                  width: 360.w,
                  height: 333.h,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1182),
                          spreadRadius: 74,
                          blurRadius: 74,
                          offset:
                              Offset(0.w, 42.h), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          // TODO - Verify radius of Container Logo
                          bottomLeft: Radius.elliptical(200, 15),
                          bottomRight: Radius.elliptical(200, 15)),
                      gradient: LinearGradient(
                        // TODO - Verify gradient colors
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(14, 24, 40, 1),
                          Color.fromRGBO(9, 14, 25, 1)
                        ],
                        // tileMode: TileMode.repeated,
                      )),
                ),
                ContainerForm(
                  height: 241.h,
                  top: 270.h,
                  bottom: 0.h,
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 293.64.h, bottom: 330.56.h, right: 87.w, left: 74.w),
                  child: FittedBox(
                    // TODO - Verify size and position of text
                    child: Text(
                      'Recuperação Concluída',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                          color: red,
                          fontFamily: 'MontserratBold'),
                    ),
                  ),
                ),
                Container(
                  height: 63.2.h,
                  width: 292.w,
                  margin: EdgeInsets.only(
                      top: 345.98.h, bottom: 230.82.h, right: 42.w, left: 26.w),
                  child: Text(
                    'Se este e-mail estiver associado a uma\nconta você receberá as instruções para\nredefinição de senha na sua caixa postal.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: black,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                LoginButton(441.0.h, 151.0.h, "OK"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
