import 'package:fleetdesk/app/data/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TasksController extends GetxController {
  static TasksController get to => Get.find<TasksController>();

  final Repository repository;

  TasksController({@required this.repository}) : assert(repository != null);

  associatePlate(Map data) async {
    return await repository.associatePlate(data);
  }
}
