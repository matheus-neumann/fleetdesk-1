import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/login/login_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_logo.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccountPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      backgroundColor: greyBG,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Stack(
            children: <Widget>[
              ContainerLogo(136.h, 68.w, 19.h, 67.h),
              Container(
                width: 328.w,
                height: 716.h,
                margin:
                EdgeInsets.only(top: 84.h, right: 16.w, left: 16.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                      15), // TODO - Verify radius of Container Fields
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 108.h, bottom: 693.h, right: 235.w, left: 32.w),
                child: FittedBox( // TODO - Verify size and position of text
                  child: Text(
                    'Criar conta',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: Color.fromRGBO(182, 32, 37, 1),
                    ),
                  ),
                ),
              ),
              Container(
                height: 32.h,
                width: 258.w,
                margin: EdgeInsets.only(
                    top: 140.h, bottom: 645.h, right: 70.w, left: 32.w),
                child: Text(
                  'Precisamos de algumas informações\npara criar seu cadastro.',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xFF201F1F),
                  ),
                ),
              ),
              Container(
                height: 16.h,
                width: 50.w,
                margin: EdgeInsets.only(
                    top: 188.h, bottom: 613.h, right: 278.w, left: 32.w),
                child: Text(
                  'Nome',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color.fromRGBO(32, 32, 31, 1),
                  ),
                ),
              ),
              Container(
                height: 16.h,
                width: 89.w,
                margin: EdgeInsets.only(
                    top: 264.h, bottom: 537.h, right: 239.w, left: 32.w),
                child: Text(
                  'Sobrenome',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color.fromRGBO(32, 32, 31, 1),
                  ),
                ),
              ),
              Container(
                height: 16.h,
                width: 35.w,
                margin: EdgeInsets.only(
                    top: 340.h, bottom: 461.h, right: 293.w, left: 32.w),
                child: Text(
                  'CPF',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color.fromRGBO(32, 32, 31, 1),
                  ),
                ),
              ),
              Container(
                height: 16.h,
                width: 52.w,
                margin: EdgeInsets.only(
                    top: 416.h, bottom: 385.h, right: 276.w, left: 32.w),
                child: Text(
                  'E-mail',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color.fromRGBO(32, 32, 31, 1),
                  ),
                ),
              ),
              Container(
                height: 16.h,
                width: 66.w,
                margin: EdgeInsets.only(
                    top: 492.h, bottom: 309.h, right: 262.w, left: 32.w),
                child: Text(
                  'Telefone',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color.fromRGBO(32, 32, 31, 1),
                  ),
                ),
              ),
              Container(
                height: 16.h,
                width: 118.w,
                margin: EdgeInsets.only(
                    top: 568.h, bottom: 233.h, right: 210.w, left: 32.w),
                child: Text(
                  'Crie sua senha',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color.fromRGBO(32, 32, 31, 1),
                  ),
                ),
              ),
              Container(
                height: 16.h,
                width: 126.w,
                margin: EdgeInsets.only(
                    top: 644.h, bottom: 157.h, right: 202.w, left: 32.w),
                child: Text(
                  'Confirmar senha',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color.fromRGBO(32, 32, 31, 1),
                  ),
                ),
              ),

              LoginButton(731.h, 38.h, "Criar conta", Routes.LOGIN),
            ],
          ),
        ),
      ),
    );
  }
}