import 'package:fleetdesk/app/controller/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/menu/menu_page.dart';
import 'package:fleetdesk/app/ui/android/recovery_password/recovery_password_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_logo.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/menu_button.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/controller/login/login_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class PinCodePage extends StatelessWidget {
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
                ContainerLogo(339.h, 76.w, 134.h, 155.h),
                ContainerForm(height: 252.h, top: 270.h, bottom: 0.h),
                Container(
                  margin: EdgeInsets.only(top: 270.h, left: 32.w, right: 32.w),
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
                            'Informe o código',
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
                          'Enviamos um código via SMS para\nseu celular cadastrado.',
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
                          pinLength: 5,
                          decoration: BoxLooseDecoration(
                            solidColor: Color(0xffF2F2F2),
                            strokeColor: Color(0xffF2F2F2),
                            gapSpace: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      LoginButton(441.0.h, 151.0.h, "Confirmar", null, onPressedMethod: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuPage()),
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
