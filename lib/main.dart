import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/bindings/splash_binding.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/translations/app_translations.dart';

import 'app/ui/android/login/login_page.dart';
import 'app/ui/android/splash/splash_page.dart';
import 'app/ui/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialBinding: HomeBinding(),
    initialRoute: Routes.INITIAL,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    home: LoginPage(),
    locale: Locale('pt', 'BR'),
    translationsKeys: AppTranslation.translations,
  ));
}
