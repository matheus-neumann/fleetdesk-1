import 'package:fleetdesk/app/controller/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/recovery_password/recovery_password_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_logo.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/menu_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/top_bar_widget.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/controller/login/login_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfigurationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      backgroundColor: splashColor,
        body: SingleChildScrollView(
            child: SafeArea(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: <Widget>[
            TopBarWidget(text: 'Configurações', backTo: Routes.MENU,),
            SizedBox(
              height: 21.h,
            ),
            Stack(
              children: [
            ContainerForm(height: 111.h, top: 0.h, bottom: 0.h,),
                Container(
                margin: EdgeInsets.only(left: 32.w, top: 18.h),
                  child: Text(
                    'Idioma',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500
                    ),
                  ),
              ),]
            ),
          SizedBox(
            height: 346.h,
          ),
            LoginButton(0.0, 0.0, 'Salvar', Routes.MENU)
          ],
        ),
      ),
    )));
  }
}
