import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagesController extends GetxController {
  final myMessages = TextEditingController();
  List<String> messages = [];
}
