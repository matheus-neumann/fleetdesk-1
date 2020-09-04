import 'package:connectivity/connectivity.dart';
import 'package:fleetdesk/app/controller/create_account/controller.dart';
import 'package:fleetdesk/app/controller/splash/splash_controller.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
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
                print(result.toString());
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
                    FlatButton(
                      child: Text(
                        'geolocator',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.GEOLOCATOR);
                      },
                    ),
                    FlatButton(
                      child: Text('bluetooth',
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Get.toNamed(Routes.BLUETOOTH);
                      },
                    ),
                    FlatButton(
                      child: Text('login page',
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Get.toNamed(Routes.LOGIN);
                      },
                    ),
                    FlatButton(
                      child: Text('profile page',
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Get.toNamed(Routes.MENU);
                      },
                    ),
                    FlatButton(
                      child: Text('vehicle plate',
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Get.toNamed(Routes.VEHICLEPLATE);
                      },
                    ),
                    FlatButton(
                      child: Text('pin code',
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        Get.toNamed(Routes.PINCODE);
                      },
                    ),
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
