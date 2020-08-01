import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/controller/splash/splash_controller.dart';
import 'package:fleetdesk/app/ui/android/widgets/loading_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      backgroundColor: splashColor,
      body: SafeArea(
        child: Container(
          child: GetX<SplashController>(initState: (state) {
            Get.find<SplashController>().getAll();
          }, builder: (_) {
            return _.postList.length < 1
                ? LoadingWidget()
                : Container(
                    width: 224.w,
                    height: 50.h,
                    margin: EdgeInsets.only(top: 295.h, left: 68.w),
                    child: Image.asset(AppAssets.fleetdeskLogo),
                  );
          }),
        ),
      ),
    );
  }
}
