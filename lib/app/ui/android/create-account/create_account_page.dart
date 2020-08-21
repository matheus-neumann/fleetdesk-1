import 'package:fleetdesk/app/controller/create_account/create_account_controller.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/login/login_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_logo.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/text_field_register.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
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
    return GetBuilder<CreateAccountController>(
        init: CreateAccountController.to,
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
                        ContainerForm(height: 716.h, top: 84.h, bottom: 0.h),
                        Container(
                          margin: EdgeInsets.only(
                              top: 108.h,
                              bottom: 693.h,
                              right: 235.w,
                              left: 32.w),
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
                        Container(
                          height: 36.h,
                          margin: EdgeInsets.only(
                              top: 140.h, bottom: 645.h, left: 32.w),
                          child: Text(
                            'Precisamos de algumas informações\npara criar seu cadastro.',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: black,
                            ),
                          ),
                        ),
                        Container(
                          height: 16.h,
                          width: 50.w,
                          margin: EdgeInsets.only(
                              top: 188.h,
                              bottom: 613.h,
                              right: 278.w,
                              left: 32.w),
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
                        TextFieldRegister(
                          controller: _.nameController,
                          hintText: 'Informe seu nome',
                          textInputAction: TextInputAction.next,
                          focusNode: nameFocus,
                          topMargin: 208.h,
                          onFieldSubmitted: (input) {
                            FocusScope.of(context).requestFocus(lastNameFocus);
                          },
                        ),
                        Container(
                          height: 16.h,
                          width: 89.w,
                          margin: EdgeInsets.only(
                              top: 264.h,
                              bottom: 537.h,
                              right: 239.w,
                              left: 32.w),
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
                        TextFieldRegister(
                          controller: _.lastNameController,
                          hintText: 'Informe seu sobrenome',
                          textInputAction: TextInputAction.next,
                          focusNode: lastNameFocus,
                          topMargin: 284.h,
                          onFieldSubmitted: (input) {
                            FocusScope.of(context).requestFocus(cpfFocus);
                          },
                        ),
                        Container(
                          height: 16.h,
                          width: 35.w,
                          margin: EdgeInsets.only(
                              top: 340.h,
                              bottom: 461.h,
                              right: 293.w,
                              left: 32.w),
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
                        TextFieldRegister(
                          controller: _.cpfController,
                          hintText: 'Informe o número de seu CPF',
                          textInputAction: TextInputAction.next,
                          focusNode: cpfFocus,
                          topMargin: 360.h,
                          onFieldSubmitted: (input) {
                            FocusScope.of(context).requestFocus(emailFocus);
                          },
                        ),
                        Container(
                          height: 16.h,
                          width: 52.w,
                          margin: EdgeInsets.only(
                              top: 416.h,
                              bottom: 385.h,
                              right: 276.w,
                              left: 32.w),
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
                        TextFieldRegister(
                          controller: _.emailController,
                          hintText: 'Informe o seu e-mail',
                          textInputAction: TextInputAction.next,
                          focusNode: emailFocus,
                          topMargin: 436.h,
                          onFieldSubmitted: (input) {
                            FocusScope.of(context).requestFocus(phoneFocus);
                          },
                        ),
                        Container(
                          height: 16.h,
                          width: 66.w,
                          margin: EdgeInsets.only(
                              top: 492.h,
                              bottom: 309.h,
                              right: 262.w,
                              left: 32.w),
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
                        TextFieldRegister(
                          controller: _.phoneController,
                          hintText: 'Informe o seu telefone',
                          textInputAction: TextInputAction.next,
                          focusNode: phoneFocus,
                          topMargin: 512.h,
                          onFieldSubmitted: (input) {
                            FocusScope.of(context).requestFocus(passwordFocus);
                          },
                        ),
                        Container(
                          height: 16.h,
                          width: 118.w,
                          margin: EdgeInsets.only(
                              top: 568.h,
                              bottom: 233.h,
                              right: 210.w,
                              left: 32.w),
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
                        TextFieldRegister(
                          controller: _.passwordController,
                          hintText: 'Digite uma senha',
                          textInputAction: TextInputAction.next,
                          focusNode: passwordFocus,
                          onFieldSubmitted: (input) {
                            FocusScope.of(context)
                                .requestFocus(confirmPasswordFocus);
                          },
                          topMargin: 588.h,
                        ),
                        Container(
                          height: 16.h,
                          width: 126.w,
                          margin: EdgeInsets.only(
                              top: 644.h,
                              bottom: 157.h,
                              right: 202.w,
                              left: 32.w),
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
                        TextFieldRegister(
                          controller: _.passwordConfirmController,
                          hintText: 'Confirme sua senha',
                          textInputAction: TextInputAction.done,
                          focusNode: confirmPasswordFocus,
                          topMargin: 664.h,
                        ),
                        LoginButton(
                          731.h,
                          38.h,
                          "Criar conta",
                          Routes.LOGIN,
                          onPressedMethod: () {
                            print(_.nameController.text);
                            _.signUp({
                              'name': _.nameController.text ?? '',
                              'last_name': _.lastNameController.text ?? '',
                              'cpf': int.parse(_.cpfController.text ?? '1'),
                              'email': _.emailController.text ?? '',
                              'phone': int.parse(_.phoneController.text ?? '1'),
                              'password': _.passwordController.text ?? '',
                              'password_confirmation':
                                  _.passwordConfirmController.text ?? ''
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ));
        });
  }
}
