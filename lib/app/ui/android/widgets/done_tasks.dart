import 'package:fleetdesk/app/controller/alerts/alerts_controller.dart';
import 'package:fleetdesk/app/controller/tasks/tasks_controller.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/tasks/tasks_info_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/tasks_widgets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:fleetdesk/app/ui/theme/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import 'navigation_bottom_bar.dart';

class DoneTasksPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TasksController>(
        init: TasksController.to,
        builder: (_) {
          return
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                        ],
                      ),
                    );
        });
  }
}
