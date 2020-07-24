import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppController extends GetxController {

  @override
  void onInit() {
    ScreenUtil.init(Get.context, width: 360, height: 640, allowFontScaling: true);
    super.onInit();
  }

}
