import 'package:fleetdesk/app/controller/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:fleetdesk/app/controller/create_account/controller.dart';
import 'package:fleetdesk/app/controller/tasks/tasks_controller.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/recovery_password/recovery_password_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_logo.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/menu_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/navigation_bottom_bar.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/controller/login/login_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return GetBuilder<Controller>(
        init: Get.put(Controller()),
        builder: (_) {
          return Scaffold(
//            floatingActionButton: FloatingActionButton(
////              child: Icon(Icons.car_rental),
//              onPressed: () async {
//                var response = await TasksController.to.associatePlate(
//                    {"car_license_plate": "AAA1234", "connect": 1});
//                final storage = new FlutterSecureStorage();
//                await storage.write(
//                    key: AppStrings.plate, value: response.toString());
//                print(response.toString());
//              },
//            ),
            bottomNavigationBar: BottomNavBar(
              currentIndex: 0,
            ),
            backgroundColor: splashColor,
            body: ListView.builder(
              itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Controller.to
                      .childrenBottom[Controller.to.indexNavBar];
                })
          );
        });
  }
}
