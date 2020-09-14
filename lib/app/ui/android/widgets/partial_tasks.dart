import 'package:fleetdesk/app/controller/create_account/controller.dart';
import 'package:fleetdesk/app/ui/android/widgets/tasks_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PartialTasksPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
        init: Controller.to,
        builder: (_) {
          return
                    Container(
                      height: 500.h,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                          itemCount: 7,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return TaskContainer();
                          }),
                    );
        });
  }
}
