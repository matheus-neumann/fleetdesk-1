import 'package:fleetdesk/app/controller/demos/bluetooth_controller.dart';
import 'package:fleetdesk/app/controller/demos/chat_controller.dart';
import 'package:get/get.dart';

class ChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(() {
      return ChatController();
    });
  }
}
