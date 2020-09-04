import 'package:fleetdesk/app/controller/menu/menu_controller.dart';
import 'package:get/get.dart';

class MenuBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuController>(() {
      return MenuController();
    });
  }
}
