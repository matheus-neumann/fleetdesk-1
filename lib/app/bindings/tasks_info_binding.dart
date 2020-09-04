import 'package:fleetdesk/app/controller/tasks_info/tasks_info_controller.dart';
import 'package:get/get.dart';

class TasksInfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TasksInfoController>(() {
      return TasksInfoController();
    });
  }
}
