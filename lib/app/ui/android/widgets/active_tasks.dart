import 'package:fleetdesk/app/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
