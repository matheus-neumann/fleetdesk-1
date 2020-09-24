import 'package:fleetdesk/app/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoneTasksPage extends StatelessWidget {

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
                        ],
                      ),
                    );
        });
  }
}
