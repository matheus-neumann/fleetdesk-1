import 'package:fleetdesk/app/controller/controller.dart';
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
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TaskContainer(),
                          SizedBox(
                            height: 16.h,
                          ),
                          TaskContainer(),
                          SizedBox(
                            height: 16.h,
                          ),
                          TaskContainer(),
                          SizedBox(
                            height: 16.h,
                          ),
                          TaskContainer(),
                          SizedBox(
                            height: 16.h,
                          ),
                          TaskContainer(),
                          SizedBox(
                            height: 16.h,
                          ),
                          TaskContainer(),
                        ],
                      ),
                    );
        });
  }
}
