import 'package:fleetdesk/app/controller/controller.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/text_field_register.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RecoveryPasswordPage extends StatelessWidget {

  final emailFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return GetBuilder<Controller>(
        init: Controller.to,
        builder: (_) {
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
                          top: 294.h, bottom: 375.h, right: 187.w, left: 32.w),
                      child: FittedBox(
                        // TODO - Verify size and position of text
                        child: Text(
                          'Recuperar Senha',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: red,
                              fontFamily: 'MontserratBold'),
                        ),
                      ),
                    ),
                    Container(
                      height: 16.h,
                      //width: 202.w,
                      margin: EdgeInsets.only(
                          top: 326.h, bottom: 298.h, left: 32.w),
                      child: Text(
                        'Informe o e-mail cadastrado.',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    Container(
                      height: 15.06.h,
                      width: 76.w,
                      margin: EdgeInsets.only(
                          top: 356.h, bottom: 268.94.h, right: 252.w, left: 32.w),
                      child: Text(
                        'Seu e-mail',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    TextFieldRegister(
                      //leftMargin: 0.w,
                      hidePassword: false,
                      controller: _.registerPasswordController,
                      hintText: 'Informe seu e-mail',
                      textInputAction: TextInputAction.next,
                      focusNode: emailFocus,
                      topMargin: 375.6.h,
                    ),
                Container(
                  margin: EdgeInsets.only(
                      top: 441.0.h, left: 32.w),
                  height: 48.h,
                  width: 296.w,
                  child: RaisedButton(
                    color: red,
                    child: Text(
                      "Recuperar senha",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: (){},
                  ),
                ),
                  ],
                ),
              ),
            ),
          ));}
    );
  }
}