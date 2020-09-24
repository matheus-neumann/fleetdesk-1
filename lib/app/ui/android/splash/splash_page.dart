import 'package:connectivity/connectivity.dart';
import 'package:fleetdesk/app/controller/controller.dart';
import 'package:fleetdesk/app/data/provider/api.dart';
import 'package:fleetdesk/app/data/repository/repository.dart';
import 'package:fleetdesk/app/ui/android/demos/bluetooth_page.dart';
import 'package:fleetdesk/app/ui/android/demos/geolocator_page.dart';
import 'package:fleetdesk/app/ui/android/login/login_page.dart';
import 'package:fleetdesk/app/ui/android/main_page/main_page.dart';
import 'package:fleetdesk/app/ui/android/pin_code/pin_code_page.dart';
import 'package:fleetdesk/app/ui/android/vehicle_plate/vehicle_plate_page.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  Controller c = Get.put<Controller>(
      Controller(repository: Repository(apiClient: MyApiClient())));

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      backgroundColor: splashColor,
      body: SafeArea(
        child: Container(
          child: GetBuilder<Controller>(
            init: Get.find<Controller>(),
            initState: (_) {
              Controller.to.connectivitySubscription = Connectivity()
                  .onConnectivityChanged
                  .listen((ConnectivityResult result) {
                Controller.to.connectivityStatus = result.toString();
                Controller.to.update();

                Future.delayed(Duration(seconds: 3), () {
                  Get.off(LoginPage());
                });

//                Get.snackbar('Conexão', result.toString(),
//                    snackPosition: SnackPosition.BOTTOM);
//                print(result.toString());
              });
            },
            builder: (_) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 224.w,
                      height: 50.h,
                      margin: EdgeInsets.only(top: 295.h, left: 68.w),
                      child: Image.asset(AppAssets.fleetdeskLogo),
                    ),
//                    FlatButton(
//                      child: Text(
//                        'geolocator',
//                        style: TextStyle(color: Colors.white),
//                      ),
//                      onPressed: () {
//                        Get.to(GeolocatorPage());
//                      },
//                    ),
//                    FlatButton(
//                      child: Text('bluetooth',
//                          style: TextStyle(color: Colors.white)),
//                      onPressed: () {
//                        Get.to(BluetoothPage());
//                      },
//                    ),
//                    FlatButton(
//                      child: Text('login page',
//                          style: TextStyle(color: Colors.white)),
//                      onPressed: () {
//                        Get.to(LoginPage());
//                      },
//                    ),
//                    FlatButton(
//                      child: Text('profile page',
//                          style: TextStyle(color: Colors.white)),
//                      onPressed: () {
//                        Get.to(MainPage());
//                      },
//                    ),
//                    FlatButton(
//                      child: Text('vehicle plate',
//                          style: TextStyle(color: Colors.white)),
//                      onPressed: () {
//                        Get.to(VehiclePlatePage());
//                      },
//                    ),
//                    FlatButton(
//                      child: Text('pin code',
//                          style: TextStyle(color: Colors.white)),
//                      onPressed: () {
//                        Get.to(PinCodePage());
//                      },
//                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
