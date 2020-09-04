import 'package:fleetdesk/app/controller/create_account/controller.dart';
import 'package:fleetdesk/app/ui/android/menu/menu_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_logo.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class VehiclePlatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
      body: GetBuilder<Controller>(
          init: Controller.to,
          builder: (_) {
            return SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Stack(
                    children: <Widget>[
                      ContainerLogo(339.h, 76.w, 134.h, 155.h),
                      ContainerForm(height: 252.h, top: 270.h, bottom: 0.h),
                      Container(
                        margin: EdgeInsets.only(
                            top: 270.h, left: 32.w, right: 32.w),
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
                                  'Informe a placa do veículo',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                      color: red,
                                      fontFamily: 'MontserratBold'),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Precisamos que você informe abaixo\na placa do veículo que está utilizando.',
//                          textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: black,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
//                      PinPut(
//                        enabled: true,
//                        fieldsCount: 4,
//                        eachFieldHeight: 48.h,
//                        eachFieldWidth: 39.42.w,
//                        keyboardType: TextInputType.number,
//                        inputDecoration: InputDecoration(
//                          fillColor: Color(0xffF2F2F2),
//                          filled: true,
//                          border: InputBorder.none,
//
//                        ),
//                      ),
                            Container(
                              width: 290.w,
                              alignment: Alignment.centerLeft,
                              //margin: EdgeInsets.only(right: 32.w),
                              child: PinInputTextFormField(
                                controller: _.plateController,
                                pinLength: 7,
                                decoration: BoxLooseDecoration(
                                  solidColor: Color(0xffF2F2F2),
                                  strokeColor: Color(0xffF2F2F2),
                                  gapSpace: 3,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 28.h,
                            ),
                            LoginButton(441.0.h, 151.0.h, "Confirmar", null,
                                onPressedMethod: () async {
                              print(_.plateController.text);
                              print(_.user.id);

                              var loginResponse = await _.login({
                                "login": _.user.email,
                                "password": _.registerPasswordController.text
                              });

                              print(loginResponse);
                              var response = await _.associatePlate({
                                "car_license_plate": _.plateController.text,
                                "connect": 1
                              });
                              print(response);
                            }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
