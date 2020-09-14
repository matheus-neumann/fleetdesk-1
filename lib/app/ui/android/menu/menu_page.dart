import 'package:fleetdesk/app/controller/create_account/controller.dart';
import 'package:fleetdesk/app/ui/android/alerts/alerts_page.dart';
import 'package:fleetdesk/app/ui/android/configuration/configuration_page.dart';
import 'package:fleetdesk/app/ui/android/demos/bluetooth_page.dart';
import 'package:fleetdesk/app/ui/android/login/login_page.dart';
import 'package:fleetdesk/app/ui/android/main_page/main_page.dart';
import 'package:fleetdesk/app/ui/android/my_account/my_account_page.dart';
import 'package:fleetdesk/app/ui/android/tasks/tasks_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/menu_button.dart';
import 'package:fleetdesk/app/ui/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return GetBuilder<Controller>(
        init: Controller.to,
        builder: (_) {
          return SafeArea(
              child: Padding(
            padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Stack(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff0E1828), Color(0xff090E19)])),
                child:
                    ContainerForm(height: 346.h, top: 96.h, bottom: 198.h)),
            MenuButton(
              left: 31.w,
              top: 105.h,
              right: 34.w,
              bottom: 492.h,
              text: 'Minha Conta',
              icon: Icons.person,
              navPage: MyAccountPage(),
            ),
            MenuButton(
              left: 31.w,
              top: 160.h,
              right: 34.w,
              bottom: 445.h,
              text: 'Tarefas',
              icon: Icons.assignment,
              navPage: MainPage(navIndex: 0,),
            ),
            //MenuButton(left: 31.w, top: 207.h, right: 34.w, bottom: 398.h, text: 'Ranking', icon: Icons.trending_up, navPage: Routes.RANKING,),
            MenuButton(
              left: 31.w,
              top: 215.h,
              right: 34.w,
              bottom: 351.h,
              text: 'Alertas',
              icon: Icons.notifications,
              navPage: MainPage(navIndex: 2,),
            ),
            MenuButton(
              left: 31.w,
              top: 270.h,
              right: 34.w,
              bottom: 304.h,
              text: 'Mensagens',
              icon: Icons.mode_comment,
              navPage: MainPage(navIndex: 1,),
            ),
            MenuButton(
              left: 31.w,
              top: 325.h,
              right: 34.w,
              bottom: 257.h,
              text: 'Configuracoes',
              icon: Icons.settings,
              navPage: ConfigurationPage(),
            ),
            MenuButton(
                left: 31.w,
                top: 380.h,
                right: 34.w,
                bottom: 210.h,
                text: 'Bluetooth',
                icon: Icons.bluetooth,
                navPage: BluetoothPage()),
            Container(
              height: 41.h,
              width: 162.w,
              margin: EdgeInsets.only(
                  top: 26.h, bottom: 573.h, right: 180.w, left: 18.w),
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
              height: 24.h,
              margin:
                  EdgeInsets.only(top: 465.h, bottom: 151.h, left: 114.w),
              child: Text(
                'Placa do veiculo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              ),
            ),
            Container(
              height: 24.h,
              margin:
                  EdgeInsets.only(top: 485.h, bottom: 132.h, left: 139.w),
              child: Text(
                'IJSH8JSG',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MontserratBold'),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: 524.h, bottom: 92.h, left: 149.w),
              child: GestureDetector(
                child: Text(
                  'Logout',
                  // TODO - Adjust font size, font weight and configure to navigate for 'Recovery Password' page
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Get.to(LoginPage());
                },
              ),
            ),
            //),
          ],
            ),
          ));
        });
  }
}
