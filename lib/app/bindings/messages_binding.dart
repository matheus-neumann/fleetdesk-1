import 'package:fleetdesk/app/controller/messages/messages_controller.dart';
import 'package:get/get.dart';

class MessagesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MessagesController>(() {
      return MessagesController();
    });
  }
}
