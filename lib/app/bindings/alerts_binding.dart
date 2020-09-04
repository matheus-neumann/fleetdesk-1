import 'package:fleetdesk/app/controller/alerts/alerts_controller.dart';
import 'package:get/get.dart';

class AlertsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlertsController>(() {
      return AlertsController();
    });
  }
}
