import 'package:fleetdesk/app/controller/pin_code/pin_code_controller.dart';
import 'package:get/get.dart';

class PinCodeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PinCodeController>(() {
      return PinCodeController();
    });
  }
}
