import 'package:fleetdesk/app/controller/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
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

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Stack(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff0E1828), Color(0xff090E19)])),
                child: ContainerForm(height: 346.h, top: 96.h, bottom: 198.h)),
            MenuButton(left: 31.w, top: 105.h, right: 34.w, bottom: 492.h, text: 'Minha Conta', icon: Icons.person, navPage: Routes.MY_ACCOUNT,),
            MenuButton(left: 31.w, top: 160.h, right: 34.w, bottom: 445.h, text: 'Tarefas', icon: Icons.assignment, navPage: Routes.TASKS,),
            //MenuButton(left: 31.w, top: 207.h, right: 34.w, bottom: 398.h, text: 'Ranking', icon: Icons.trending_up, navPage: Routes.RANKING,),
            MenuButton(left: 31.w, top: 215.h, right: 34.w, bottom: 351.h, text: 'Alertas', icon: Icons.notifications),
            MenuButton(left: 31.w, top: 270.h, right: 34.w, bottom: 304.h, text: 'Mensagens', icon: Icons.mode_comment),
            MenuButton(left: 31.w, top: 325.h, right: 34.w, bottom: 257.h, text: 'Configuracoes', icon: Icons.settings),
            MenuButton(left: 31.w, top: 380.h, right: 34.w, bottom: 210.h, text: 'Bluetooth', icon: Icons.bluetooth, navPage: Routes.BLUETOOTH),
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
                        fontFamily: 'Montserrat'
                    ),
                    /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Ricardo Gomes',
                          style: TextStyle(
                            fontSize: 22.sp,
                            color: Colors.white,
                              fontFamily: 'MontserratBold'
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 24.h,
              margin: EdgeInsets.only(
                  top: 465.h, bottom: 151.h, left: 114.w),
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
              margin: EdgeInsets.only(
                  top: 485.h, bottom: 132.h, left: 139.w),
              child: Text(
                'IJSH8JSG',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                    fontFamily: 'MontserratBold'
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 524.h, bottom: 92.h, left: 149.w),
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
                  Get.toNamed(Routes.LOGIN);
                },
              ),
            ),
            //),
          ],
        ),
      ))),
      bottomNavigationBar: Container(
        height: 64.h,
        width: 360.w,
        child: BottomNavigationBar(
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              title: new Text('Messages'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile')
            ),
          ],
        ),
      ),
    );
  }
}
