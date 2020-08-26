import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/login/login_page.dart';
import 'package:fleetdesk/app/ui/android/menu/menu_page.dart';
import 'package:fleetdesk/app/ui/android/tasks/tasks_page.dart';
import 'package:fleetdesk/app/ui/messages.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {

  int currentIndex;
  var routes;

  BottomNavBar({this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 64.h,
        width: 360.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.sp), topLeft: Radius.circular(20.sp))),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            unselectedIconTheme: IconThemeData(
              color: Color(0xffC4C4C4)
            ),
            unselectedLabelStyle: TextStyle(
              color: Color(0xffC4C4C4),
                fontSize: 10.sp
            ),
            selectedIconTheme: IconThemeData(
                color: black
            ),
            selectedLabelStyle: TextStyle(
                color: black,
                fontSize: 10.sp
            ),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                  icon: InkWell(
                    onTap: () => Get.toNamed(Routes.TASKS),
                    child: Icon(
                      Icons.assignment,
                    ),
                  ),
                  title: Text(
                    'Tarefas',
                  )),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: InkWell(
                  onTap: () => Get.toNamed(Routes.MESSAGES),
                  child: Icon(
                    Icons.sms,
                  ),
                ),
                title: Text(
                  'Mensagens',
                ),
              ),
              BottomNavigationBarItem(
                  backgroundColor: Colors.transparent,
                  icon: InkWell(
                    onTap: () => Get.toNamed(Routes.ALERTS),
                    child: Icon(
                      Icons.notifications,
                    ),
                  ),
                  title: Text(
                    'Alertas',
                  )),
              BottomNavigationBarItem(
                  backgroundColor: Colors.transparent,
                  icon: InkWell(
                    onTap: () => Get.toNamed(Routes.MENU),
                    child: Icon(
                      Icons.menu,
                    ),
                  ),
                  title: Text(
                    'Menu',
                  )),
            ],
          ),
        );
  }
}