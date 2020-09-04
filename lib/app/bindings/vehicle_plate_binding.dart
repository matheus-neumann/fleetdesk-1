import 'package:fleetdesk/app/controller/create_account/controller.dart';
import 'package:get/get.dart';

class VehiclePlateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controller>(() {
      return Controller();
    });
  }
}
