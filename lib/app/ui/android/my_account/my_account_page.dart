import 'package:fleetdesk/app/ui/android/menu/menu_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/text_field_register.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyAccountPage extends StatelessWidget {

  final nameFocus = FocusNode();
  final lastNameFocus = FocusNode();
  final cpfFocus = FocusNode();
  final mailFocus = FocusNode();
  final phoneFocus = FocusNode();
  final passwordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();
  final cnhFocus = FocusNode();
  final pisFocus = FocusNode();
  final birthdayFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
        backgroundColor: splashColor,
        body: SingleChildScrollView(
            child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Stack(children: <Widget>[
              Container(
                  height: 67.5.h,
                  width: 360.w,
                  decoration: BoxDecoration(
                      color: appBarColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)))),
              Container(
                margin: EdgeInsets.only(top: 19.5.h, bottom: 16.h),
                height: 32.h,
                width: 360.w,
                child: Stack(
                  children: [
                    GestureDetector(
                        child: Container(
                            margin: EdgeInsets.only(
                                left: 16.w,
                                right: 334.w,
                                top: 8.h,
                                bottom: 8.h),
                            width: 10.w,
                            child: Icon(Icons.arrow_back_ios,
                                color: Color(0xffffffff))),
                        onTap: () {
                          Get.to(MenuPage());
                        }),
                    Container(
                      width: 120.w,
                      height: 30.h,
                      margin:
                          EdgeInsets.only(left: 128.w, top: 2.h, right: 112.w),
                      child: FittedBox(
                        // TODO - Verify size and position of text
                        child: Text(
                          'Minha conta',
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,),
                        ),
                      ),
                    ),
                    GestureDetector(
                        child: Container(
                            margin: EdgeInsets.only(
                                left: 320.w,
                                right: 16.w,
                                top: 4.h,
                                bottom: 4.h),
                            width: 10.w,
                            child: Icon(Icons.edit, color: Color(0xffffffff))),
                        onTap: () {
                          Get.to(MenuPage());
                        }),
                  ],
                ),
              ),
              Container(
                height: 40.h,
                width: 162.w,
                margin: EdgeInsets.only(
                    left: 16.w, top: 83.h, right: 182.w, bottom: 1053.h),
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  // TODO - Review size and position of text
                  child: RichText(
                    text: TextSpan(
                      text: 'Olá,\n',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontFamily: 'Montserrat'),
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Ricardo Gomes',
                            style: TextStyle(
                                fontSize: 22.sp,
                                color: Colors.white,
                                fontFamily: 'MontserratBold')),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 240.w,
                height: 84.h,
                margin: EdgeInsets.only(
                    left: 15.w, top: 140.h, right: 105.w, bottom: 953.h),
                child: Row(
                  children: [
                    Container(
                      width: 84.0,
                      height: 84.0,
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(42.0),
                        border: new Border.all(
                          width: 1.0,
                          color: Colors.white,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.add_photo_alternate,
                          size: 36.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      height: 32.h,
                      width: 136.w,
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        // TODO - Review size and position of text
                        child: RichText(
                          text: TextSpan(
                            text: 'Envie uma foto sua\n',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white,
                                fontFamily: 'MontserratSemiBold'),
                            /*defining default style is optional */
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Foto estilo selfie.',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                      fontFamily: 'Montserrat')),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ContainerForm(
                height: 803.h,
                top: 245.h,
                bottom: 129.h,
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 269.h, bottom: 763.h, right: 142.w, left: 32.w),
                child: FittedBox(
                  // TODO - Verify size and position of text
                  child: Text(
                    'Cadastro de Motorista',
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
                    top: 301.h, bottom: 844.h, right: 98.w, left: 32.w),
                child: FittedBox(
                  child: Text(
                    'Se precisar, edite ou complete as\ninformações abaixo.',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: black,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 32.w, top: 349.h, right: 284.w, bottom: 812.h),
                child: FittedBox(
                  child: Text(
                    'Nome',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: black,
                        fontFamily: 'MontserratSemiBold'),
                  ),
                ),
              ),
              TextFieldRegister(hintText: 'Informe seu nome',
                    textInputAction: TextInputAction.next,
                    focusNode: nameFocus,
                    topMargin: 369.h,),
              Container(
                margin: EdgeInsets.only(
                    left: 32.w, top: 425.h, right: 244.w, bottom: 736.h),
                child: FittedBox(
                  child: Text(
                    'Sobrenome',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: black,
                        fontFamily: 'MontserratSemiBold'),
                  ),
                ),
              ),
              TextFieldRegister(hintText: 'Informe seu sobrenome',
                    textInputAction: TextInputAction.next,
                    focusNode: lastNameFocus,
                    topMargin: 445.h,),
              Container(
                margin: EdgeInsets.only(
                    left: 32.w, top: 501.h, right: 299.w, bottom: 660.h),
                child: FittedBox(
                  child: Text(
                    'CPF',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: black,
                        fontFamily: 'MontserratSemiBold'),
                  ),
                ),
              ),
              TextFieldRegister(hintText: 'Informe o número de seu CPF',
                    textInputAction: TextInputAction.next,
                    focusNode: cpfFocus,
                    topMargin: 521.h,),
              Container(
                margin: EdgeInsets.only(
                    left: 32.w, top: 577.h, right: 165.w, bottom: 584.h),
                child: FittedBox(
                  child: Text(
                    'Carteira de Habilitação',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: black,
                        fontFamily: 'MontserratSemiBold'),
                  ),
                ),
              ),
              TextFieldRegister(hintText: 'Informe o número de sua CNH',
                    textInputAction: TextInputAction.next,
                    focusNode: cnhFocus,
                    topMargin: 597.h,),
              // Container(
              //   margin: EdgeInsets.only(
              //       left: 32.w, top: 349.h, right: 284.w, bottom: 812.h),
              //   child: FittedBox(
              //     child: Text(
              //       'Nome',
              //       style: TextStyle(
              //           fontSize: 14.sp,
              //           color: black,
              //           fontFamily: 'MontserratSemiBold'),
              //     ),
              //   ),
              // ),
              Container(
                margin: EdgeInsets.only(
                    left: 32.w, top: 653.h, right: 305.w, bottom: 508.h),
                child: FittedBox(
                  child: Text(
                    'PIS',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: black,
                        fontFamily: 'MontserratSemiBold'),
                  ),
                ),
              ),
              TextFieldRegister(hintText: 'Informe o número de seu PIS',
                    textInputAction: TextInputAction.next,
                    focusNode: pisFocus,
                    topMargin: 673.h,),
              Container(
                margin: EdgeInsets.only(
                    left: 32.w, top: 729.h, right: 182.w, bottom: 432.h),
                child: FittedBox(
                  child: Text(
                    'Data de Nascimento',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: black,
                        fontFamily: 'MontserratSemiBold'),
                  ),
                ),
              ),
              TextFieldRegister(hintText: 'Qual sua data de nascimento?',
                    textInputAction: TextInputAction.next,
                    focusNode: birthdayFocus,
                    topMargin: 749.h,),
              Container(
                margin: EdgeInsets.only(
                    left: 32.w, top: 805.h, right: 282.w, bottom: 356.h),
                child: FittedBox(
                  child: Text(
                    'E-mail',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: black,
                        fontFamily: 'MontserratSemiBold'),
                  ),
                ),
              ),
              TextFieldRegister(hintText: 'Informe o seu e-mail',
                    textInputAction: TextInputAction.next,
                    focusNode: mailFocus,
                    topMargin: 825.h,),
              Container(
                margin: EdgeInsets.only(
                    left: 32.w, top: 881.h, right: 267.w, bottom: 280.h),
                child: FittedBox(
                  child: Text(
                    'Telefone',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: black,
                        fontFamily: 'MontserratSemiBold'),
                  ),
                ),
              ),
              TextFieldRegister(hintText: 'Informe o seu telefone',
                    textInputAction: TextInputAction.next,
                    focusNode: phoneFocus,
                    topMargin: 901.h,),
              Container(
                margin: EdgeInsets.only(
                    left: 32.w, top: 957.h, right: 233.w, bottom: 204.h),
                child: FittedBox(
                  child: Text(
                    'Alterar senha',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: black,
                        fontFamily: 'MontserratSemiBold'),
                  ),
                ),
              ),
              TextFieldRegister(hintText: 'Digite uma senha',
                    textInputAction: TextInputAction.next,
                    focusNode: passwordFocus,
                    topMargin: 977.h,),
              LoginButton(1083.h, 46.h, "Salvar")
            ]),
          ),
        )));
  }
}
