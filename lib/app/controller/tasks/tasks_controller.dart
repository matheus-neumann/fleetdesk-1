import 'package:fleetdesk/app/data/repository/repository.dart';
import 'package:fleetdesk/app/ui/android/widgets/active_tasks.dart';
import 'package:fleetdesk/app/ui/android/widgets/done_tasks.dart';
import 'package:fleetdesk/app/ui/android/widgets/partial_tasks.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class TasksController extends GetxController {
  static TasksController get to => Get.find<TasksController>();

//  final Repository repository;
//
//  TasksController({@required this.repository}) : assert(repository != null);
//
//  associatePlate(Map data) async {
//    return await repository.associatePlate(data);
//  }

  // Menu

  int indexTasks = 1;

  final List<Widget> childrenTasks = [
    ActiveTasksPage(),
    PartialTasksPage(),
    DoneTasksPage(),
  ];

  void navigationPartial() {

    indexTasks = 1;
    update();

  }

  void navigationActive() {

    //put<TasksController>(TasksController());
    indexTasks = 0;
    update();

  }

  void navigationDone() {

    indexTasks = 2;
    update();

  }
}
