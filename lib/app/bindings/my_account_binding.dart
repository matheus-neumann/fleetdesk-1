import 'package:fleetdesk/app/controller/my_account/my_account_controller.dart';
import 'package:get/get.dart';

class MyAccountBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyAccountController>(() {
      return MyAccountController();
    });
  }
}
