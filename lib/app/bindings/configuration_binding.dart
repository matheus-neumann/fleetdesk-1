import 'package:fleetdesk/app/controller/configuration/configuration_controller.dart';
import 'package:get/get.dart';

class ConfigurationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfigurationController>(() {
      return ConfigurationController();
    });
  }
}
