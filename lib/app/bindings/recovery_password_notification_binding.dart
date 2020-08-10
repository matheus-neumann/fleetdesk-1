import 'package:fleetdesk/app/controller/recovery_password/recovery_password_notification_controller.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/controller/login/login_controller.dart';
import 'package:fleetdesk/app/data/provider/api.dart';
import 'package:fleetdesk/app/data/repository/posts_repository.dart';
import 'package:http/http.dart' as http;

class RecoveryPasswordNotificationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecoveryPasswordNotificationController>(() {
      return RecoveryPasswordNotificationController();
    });
  }
}