import 'package:fleetdesk/app/controller/controller.dart';
import 'package:fleetdesk/app/ui/android/pin_code/pin_code_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_logo.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/text_field_register.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CreateAccountPage extends StatelessWidget {
  final nameFocus = FocusNode();
  final lastNameFocus = FocusNode();
  final cpfFocus = FocusNode();
  final emailFocus = FocusNode();
  final phoneFocus = FocusNode();
  final passwordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return GetBuilder<Controller>(
        init: Controller.to,
        builder: (_) {
          return Scaffold(
              backgroundColor: greyBG,
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Stack(
                      children: <Widget>[
                        ContainerLogo(136.h, 68.w, 19.h, 67.h),
                        ContainerForm(height: 742.h, top: 84.h, bottom: 0.h),
                        Container(
                          height: 754.h,
                          width: 328.w,
                          margin: EdgeInsets.only(
                              left: 32.w, top: 84.h, right: 32.w),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 24.h,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: FittedBox(
                                  // TODO - Verify size and position of text
                                  child: Text(
                                    'Criar conta',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                      color: red,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 36.h,
                                child: Text(
                                  'Precisamos de algumas informações\npara criar seu cadastro.',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Nome',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: black,
                                        fontWeight: FontWeight.w500),
                                    /*defining default style is optional */
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: red,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              TextFieldRegister(
                                leftMargin: 0.w,
                                controller: _.nameController,
                                hintText: 'Informe seu nome',
                                textInputAction: TextInputAction.next,
                                focusNode: nameFocus,
                                //topMargin: 208.h,
                                onFieldSubmitted: (input) {
                                  FocusScope.of(context)
                                      .requestFocus(lastNameFocus);
                                },
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Sobrenome',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: black,
                                        fontWeight: FontWeight.w500),
                                    /*defining default style is optional */
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: red,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              TextFieldRegister(
                                leftMargin: 0.w,
                                controller: _.lastNameController,
                                hintText: 'Informe seu sobrenome',
                                textInputAction: TextInputAction.next,
                                focusNode: lastNameFocus,
                                //topMargin: 284.h,
                                onFieldSubmitted: (input) {
                                  FocusScope.of(context).requestFocus(cpfFocus);
                                },
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'CPF',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: black,
                                        fontWeight: FontWeight.w500),
                                    /*defining default style is optional */
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: red,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              TextFieldRegister(
                                leftMargin: 0.w,
                                controller: _.cpfController,
                                hintText: 'Informe o número de seu CPF',
                                textInputAction: TextInputAction.next,
                                focusNode: cpfFocus,
                                //topMargin: 360.h,
                                onFieldSubmitted: (input) {
                                  FocusScope.of(context)
                                      .requestFocus(emailFocus);
                                },
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'E-mail',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: black,
                                        fontWeight: FontWeight.w500),
                                    /*defining default style is optional */
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: red,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              TextFieldRegister(
                                leftMargin: 0.w,
                                controller: _.emailController,
                                hintText: 'Informe o seu e-mail',
                                textInputAction: TextInputAction.next,
                                focusNode: emailFocus,
                                //topMargin: 436.h,
                                onFieldSubmitted: (input) {
                                  FocusScope.of(context)
                                      .requestFocus(phoneFocus);
                                },
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Telefone',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: black,
                                        fontWeight: FontWeight.w500),
                                    /*defining default style is optional */
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: red,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              TextFieldRegister(
                                leftMargin: 0.w,
                                controller: _.phoneController,
                                hintText: 'Informe o seu telefone',
                                textInputAction: TextInputAction.next,
                                focusNode: phoneFocus,
                                //topMargin: 512.h,
                                onFieldSubmitted: (input) {
                                  FocusScope.of(context)
                                      .requestFocus(passwordFocus);
                                },
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Crie sua senha',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: black,
                                        fontWeight: FontWeight.w500),
                                    /*defining default style is optional */
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: red,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              TextFieldRegister(
                                leftMargin: 0.w,
                                hidePassword: true,
                                controller: _.registerPasswordController,
                                hintText: 'Digite uma senha',
                                textInputAction: TextInputAction.next,
                                focusNode: passwordFocus,
                                onFieldSubmitted: (input) {
                                  FocusScope.of(context)
                                      .requestFocus(confirmPasswordFocus);
                                },
                                //topMargin: 588.h,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Confirmar senha',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: black,
                                        fontWeight: FontWeight.w500),
                                    /*defining default style is optional */
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '*',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: red,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              TextFieldRegister(
                                leftMargin: 0.w,
                                hidePassword: true,
                                controller: _.passwordConfirmController,
                                hintText: 'Confirme sua senha',
                                textInputAction: TextInputAction.done,
                                focusNode: confirmPasswordFocus,
                                //topMargin: 664.h,
                              ),
                              SizedBox(
                                height: 26.h,
                              ),
                              LoginButton(
                                727.h,
                                30.h,
                                "Criar conta",
                                onPressedMethod: () async {
                                  print(_.nameController.text);
                                  var response = await _.signUp({
                                    'name': _.nameController.text ?? '',
                                    'last_name':
                                    _.lastNameController.text ?? '',
                                    'cpf':
                                    int.parse(_.cpfController.text ?? '1'),
                                    'email': _.emailController.text ?? '',
                                    'phone': int.parse(
                                        _.phoneController.text ?? '1'),
                                    'password':
                                    _.registerPasswordController.text ?? '',
                                    'password_confirmation':
                                    _.passwordConfirmController.text ?? ''
                                  });
                                  print(response);
                                  if (response != null) {
                                    _.userId = response.data['user_id'];

                                    //await _.getUser(_.emailController.text);

                                    var pinResponse =
                                        await _.generateToken(_.userId);
                                    print(pinResponse);
                                    Get.to(PinCodePage());
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ));
        });
  }
}
