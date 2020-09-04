import 'package:fleetdesk/app/controller/create_account/controller.dart';
import 'package:fleetdesk/app/controller/recovery_password/recovery_password_controller.dart';
import 'package:get/get.dart';

class RecoveryPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controller>(() {
      return Controller();
    });
  }
}
