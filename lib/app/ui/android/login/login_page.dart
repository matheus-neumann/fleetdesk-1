import 'package:fleetdesk/app/controller/create_account/controller.dart';
import 'package:fleetdesk/app/controller/login/login_controller.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_logo.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: GetBuilder<Controller>(
          init: Get.find<Controller>(),
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
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          margin: EdgeInsets.only(top: 225.h),
                          child: Column(
                            children: [
                              SizedBox(height: 24.h),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 16.w),
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
                              SizedBox(height: 24.h),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 16.w),
                                child: Text(
                                  'Seu e-mail',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: black,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Container(
                                height: 48.h,
                                width: 296.w,
                                child: TextFormField(
                                  textAlign: TextAlign.left,
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _.loginController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 12.w, top: 16.h, bottom: 16.h),
                                      border: InputBorder.none,
                                      hintText: 'Informe seu e-mail',
                                      // TODO - Adjust font size and font weight
                                      hintStyle: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color.fromRGBO(32, 32, 31, 0.94),
                                      ),
                                      filled: true,
                                      fillColor: Color.fromRGBO(242, 242, 242, 1),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 16.w),
                                child: Text(
                                  'Senha',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: black,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Container(
                                height: 48.h,
                                width: 296.w,
                                child: TextFormField(
                                  textAlign: TextAlign.left,
                                  obscureText: _.obscureText,
                                  keyboardType: TextInputType.visiblePassword,
                                  controller: _.passwordController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 12.w, top: 16.h, bottom: 16.h),
                                      border: InputBorder.none,
                                      suffixIcon: IconButton(
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
                                          borderSide: BorderSide.none)),
                                ),
//                            TextFormField(
//                              textAlign: TextAlign.left,
//                              obscureText: _.obscureText,
//                              keyboardType: TextInputType.visiblePassword,
//                              controller: _.passwordController,
//                              decoration: InputDecoration(
//                                  contentPadding: EdgeInsets.only(left: 12.w, top: 16.h, bottom: 16.h),
//                                  border: InputBorder.none,
//                                  suffix: Container(
//                                    margin: EdgeInsets.only(top: 16.h, bottom: 16.h),
//                                    child: IconButton(
//                                        icon: Icon(
//                                          Icons.remove_red_eye,
//                                          color: _.obscureText
//                                              ? Colors.grey
//                                              : Colors.blue,
//                                        ),
//                                        onPressed: () {
//                                          _.obscureText = !_.obscureText;
//                                          _.update();
//                                        }),
//                                  ),
//                                  hintText: 'Informe sua senha',
//                                  // TODO - Adjust font size and font weight
//                                  hintStyle: TextStyle(
//                                    fontSize: 14.sp,
//                                    color: Color.fromRGBO(32, 32, 31, 0.94),
//                                  ),
//                                  filled: true,
//                                  fillColor: Color.fromRGBO(242, 242, 242, 1),
//                                  enabledBorder: OutlineInputBorder(
//                                      borderRadius: BorderRadius.circular(10),
//                                      borderSide: BorderSide.none)),
//                            ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 16.h,
                                    width: 16.w,
                                    margin: EdgeInsets.only(left: 16.w),
                                    decoration: BoxDecoration(shape: BoxShape.circle),
                                    child: Checkbox(
                                      // TODO - Adjust radius of CheckBox Password
                                      value: _.savePassword,
                                      onChanged: (newValue) {
                                        _.savePassword = newValue;
                                        _.update();
                                      },
                                      activeColor: splashColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Container(
                                    child: Text(
                                      'Salvar senha',
                                      // TODO - Adjust font size and font weight
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: black,
                                          fontFamily: 'Montserrat'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 93.w,
                                  ),
                                  Container(
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
                                ],
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              LoginButton(
                                481.0.h,
                                111.0.h,
                                "Entrar",
                                null,
                                onPressedMethod: () async {
                                  //_.signUp({});
                                  await _.login({
                                    "login": _.loginController.text,
                                    "password": _.passwordController.text
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
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
