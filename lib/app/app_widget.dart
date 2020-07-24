import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/routes/app_routes.dart';
import 'package:fleetdesk/app/theme/app_theme.dart';

import 'modules/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      defaultTransition: Transition.fade,
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
      theme: appThemeData,
      home: HomePage(),
    );
  }
}