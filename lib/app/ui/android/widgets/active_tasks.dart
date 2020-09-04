import 'package:fleetdesk/app/controller/alerts/alerts_controller.dart';
import 'package:fleetdesk/app/controller/create_account/controller.dart';
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

class ActiveTasksPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
        init: Controller.to,
        builder: (_) {
          return
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Você ainda não\npossui tarefas.', style: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    );
        });
  }
}
