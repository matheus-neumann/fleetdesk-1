import 'package:fleetdesk/app/ui/android/login/login_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ExamplePage extends StatelessWidget {
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
                    MenuButton(left: 31.w, top: 113.h, right: 34.w, bottom: 492.h, text: 'Minha Conta',icon: Icons.person),
                    MenuButton(left: 31.w, top: 160.h, right: 34.w, bottom: 445.h, text: 'Tarefas',icon: Icons.assignment),
                    MenuButton(left: 31.w, top: 207.h, right: 34.w, bottom: 398.h, text: 'Ranking',icon: Icons.trending_up),
                    MenuButton(left: 31.w, top: 254.h, right: 34.w, bottom: 351.h, text: 'Alertas',icon: Icons.notifications),
                    MenuButton(left: 31.w, top: 301.h, right: 34.w, bottom: 304.h, text: 'Mensagens',icon: Icons.mode_comment),
                    MenuButton(left: 31.w, top: 348.h, right: 34.w, bottom: 257.h, text: 'Configuracoes',icon: Icons.settings),
                    MenuButton(left: 31.w, top: 395.h, right: 34.w, bottom: 210.h, text: 'Bluetooth',icon: Icons.bluetooth),
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
                            text: 'Ola,\n',
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
                      width: 132.w,
                      margin: EdgeInsets.only(
                          top: 465.h, bottom: 151.h, right: 116.w, left: 114.w),
                      child: Text(
                        'Placa do veiculo',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontFamily: 'Montserrat'
                        ),
                      ),
                    ),
                    Container(
                      height: 24.h,
                      width: 132.w,
                      margin: EdgeInsets.only(
                          top: 485.h, bottom: 132.h, right: 143.w, left: 139.w),
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
                          top: 524.h, bottom: 92.h, right: 153.w, left: 149.w),
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
