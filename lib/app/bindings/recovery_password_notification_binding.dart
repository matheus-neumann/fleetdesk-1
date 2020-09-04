import 'package:fleetdesk/app/controller/recovery_password/recovery_password_notification_controller.dart';
import 'package:get/get.dart';

class RecoveryPasswordNotificationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecoveryPasswordNotificationController>(() {
      return RecoveryPasswordNotificationController();
    });
  }
}
