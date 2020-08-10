import 'package:fleetdesk/app/controller/demos/bluetooth_controller.dart';
import 'package:fleetdesk/app/controller/demos/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dash_chat/dash_chat.dart';

class ChatPage extends StatelessWidget {
  ChatController chatController = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chat testing'),
        ),
        body: GetBuilder<ChatController>(
            init: chatController,
            builder: (_) {
              return Column(
                children: [],
              );
            }));
  }
}
