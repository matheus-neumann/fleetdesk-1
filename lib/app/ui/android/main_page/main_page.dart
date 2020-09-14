import 'package:fleetdesk/app/controller/create_account/controller.dart';
import 'package:fleetdesk/app/ui/android/widgets/navigation_bottom_bar.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return GetBuilder<Controller>(
        init: Controller.to,
        builder: (_) {
          return Scaffold(
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.local_shipping),
                onPressed: () async {
                  _.initGeolocator();
//                  var response = await _.associatePlate(
//                      {"car_license_plate": 'SOL6655', "connect": 1});
//                  print(response);
                },
              ),
              bottomNavigationBar: BottomNavBar(
                currentIndex: Controller.to.indexNavBar,
              ),
              backgroundColor: splashColor,
              body: ListView.builder(
                  itemCount: 1,
                  //shrinkWrap: true,
                  itemBuilder: (BuildContext ctx, int index) {
                    return Controller
                        .to.childrenBottom[Controller.to.indexNavBar];
                  }));
        });
  }
}
