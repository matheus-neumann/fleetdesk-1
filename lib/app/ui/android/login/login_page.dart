import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/recovery_password/recovery_password_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_logo.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/controller/login/login_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: GetBuilder<LoginController>(
          init: Get.find<LoginController>(),
          builder: (_) {
            return SingleChildScrollView(
                child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Stack(
                  children: <Widget>[
                    ContainerLogo(333.h, 68.w, 134.h, 149.h),
                    ContainerForm(height: 320.h, top: 225.h, bottom: 95.h),
                    Container(
                      margin: EdgeInsets.only(
                          top: 249.h, bottom: 375.h, right: 187.w, left: 32.w),
                      child: FittedBox(
                        // TODO - Verify size and position of text
                        child: Text(
                          'Realize seu login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: red,
                              fontFamily: 'MontserratBold'),
                        ),
                      ),
                    ),
                    Container(
                      height: 48.h,
                      width: 296.w,
                      margin: EdgeInsets.only(
                          top: 289.h, bottom: 335.h, right: 252.w, left: 32.w),
                      child: Text(
                        'Seu e-mail',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    Container(
                      height: 48.h,
                      width: 296.w,
                      margin: EdgeInsets.only(
                          top: 309.h, bottom: 283.h, right: 32.w, left: 32.w),
                      child: TextFormField(
                        decoration: InputDecoration(

                            //contentPadding: EdgeInsets.only(left: 12.0, top: 16, bottom: 16),
                            border: InputBorder.none,
                            //labelText: 'Informe seu e-mail',
                            hintText: 'Informe seu e-mail',
//                            // TODO - Adjust font size and font weight
//                            hintStyle: TextStyle(
//                              fontSize: 14.sp,
//                              color: Color.fromRGBO(32, 32, 31, 0.94),
//                            ),
                            filled: true,
                            fillColor: Color.fromRGBO(242, 242, 242, 1),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(242, 242, 242, 1),
                                ))),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 365.h, bottom: 259.h, right: 283.w, left: 32.w),
                      child: Text(
                        'Senha',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    Container(
                      height: 48.h,
                      width: 296.w,
                      margin: EdgeInsets.only(
                          top: 385.h, bottom: 207.h, right: 32.w, left: 32.w),
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        obscureText: _.obscureText,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            //contentPadding: EdgeInsets.only(left: 12.0, top: 16, bottom: 16),
                            border: InputBorder.none,
                            suffix: Container(
                              width: 24,
                              height: 24,
                              //padding: EdgeInsets.only(top: 24),
                              //margin: EdgeInsets.only(top: 12.h, bottom: 12.h),
//                              margin: EdgeInsets.only(
//                                  top: 12.h, bottom: 12.h, right: 12.w, left: 276.w),
                              child: IconButton(
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(
                                    Icons.remove_red_eye,
                                    color: _.obscureText
                                        ? Colors.grey
                                        : Colors.blue,
                                  ),
                                  onPressed: () {
                                    _.obscureText = !_.obscureText;
                                    _.update();
                                  }),
                            ),
                            hintText: 'Informe sua senha',
                            // TODO - Adjust font size and font weight
                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              color: Color.fromRGBO(32, 32, 31, 0.94),
                            ),
                            filled: true,
                            fillColor: Color.fromRGBO(242, 242, 242, 1),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(242, 242, 242, 1),
                                ))),
                      ),
                    ),
                    Container(
                      height: 16.h,
                      width: 16.w,
                      margin: EdgeInsets.only(
                          top: 441.h, bottom: 183.h, right: 312.w, left: 32.w),
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Checkbox(
                        // TODO - Adjust radius of CheckBox Password
                        value: _.savePassword,
                        onChanged: (newValue) {
                          _.savePassword = newValue;
                          _.update();
                        },

//                onChanged: (newValue) {
//                  setState(() {
//                   checkedValue = newValue;
//                });
//              },
                      ),
                    ),
                    Container(
//                      height: 16.h,
//                      width: 76.w,
                      margin: EdgeInsets.only(
                          top: 441.h, bottom: 183.h, right: 228.w, left: 56.w),
                      child: Text(
                        'Salvar senha',
                        // TODO - Adjust font size and font weight
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 441.h, bottom: 183.h, right: 32.w, left: 225.w),
                      child: GestureDetector(
                        child: Text(
                          'Recuperar senha',
                          // TODO - Adjust font size, font weight and configure to navigate for 'Recovery Password' page
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12.sp,
                              color: black,
                              fontFamily: 'Montserrat'),
                        ),
                        onTap: () {
                          Get.toNamed(Routes.PW_RECOVERY);
                        },
                      ),
                    ),
                    LoginButton(481.0.h, 111.0.h, "Entrar", null),
//                    Container(
//                      height: 24.h,
//                      width: 24.w,
//                      margin: EdgeInsets.only(
//                          top: 397.h, bottom: 219.h, right: 44.w, left: 292.w),
//                      child: IconButton(
//                          icon: Icon(
//                            Icons.remove_red_eye,
//                            color: _.obscureText ? Colors.grey : Colors.blue,
//                          ),
//                          onPressed: () {
//                            _.obscureText = !_.obscureText;
//                            _.update();
//                          }),
//                    ),
                    Container(
                      height: 32.h,
                      width: 174.w,
                      margin: EdgeInsets.only(
                          top: 571.h, bottom: 37.h, right: 93.w, left: 93.w),
                      child: GestureDetector(
                        child: FittedBox(
                          // TODO - Verify size and position of text
                          child: Text(
                            'Ainda não possui conta?\nCrie agora mesmo.',
                            textAlign: TextAlign.center,
                            // TODO - Adjust font size, font weight and configure to navigate for 'Recovery Password' page
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 14.sp,
                                color: black,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                        onTap: () {
                          Get.toNamed(Routes.CREATE_ACCOUNT);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ));
          }),
    );
  }
}
