import 'package:fleetdesk/app/controller/example/example_controller.dart';
import 'package:get/get.dart';

class ExampleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExampleController>(() {
      return ExampleController();
    });
  }
}
