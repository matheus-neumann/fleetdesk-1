import 'package:get/get.dart';
import 'package:fleetdesk/app/bindings/login_binding.dart';
import 'package:fleetdesk/app/ui/android/splash/splash_page.dart';
import 'package:fleetdesk/app/ui/android/login/login_page.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashPage(),
    ),
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
  ];
}
