import 'package:fleetdesk/app/controller/create_account/controller.dart';
import 'package:fleetdesk/app/controller/demos/bluetooth_controller.dart';
import 'package:get/get.dart';

class BluetoothBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controller>(() {
      return Controller();
    });
  }
}
