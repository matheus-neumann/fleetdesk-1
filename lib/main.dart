import 'package:fleetdesk/app/translations/app_translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/ui/android/splash/splash_page.dart';
import 'app/ui/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    theme: appThemeData,
    defaultTransition: Transition.fade,
    home: SplashPage(),
    locale: Locale('pt', 'BR'),
    translationsKeys: AppTranslation.translations,
  ));
}

//floatingActionButton: FloatingActionButton(
////              child: Icon(Icons.car_rental),
//onPressed: () async {
//var response = await TasksController.to.associatePlate(
//{"car_license_plate": "AAA1234", "connect": 1});
//final storage = new FlutterSecureStorage();
//await storage.write(
//key: AppStrings.plate, value: response.toString());
//print(response.toString());
//},
//),