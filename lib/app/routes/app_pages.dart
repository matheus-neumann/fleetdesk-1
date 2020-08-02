import 'package:fleetdesk/app/bindings/geolocator_binding.dart';
import 'package:fleetdesk/app/bindings/recovery_password_notification_binding.dart';
import 'package:fleetdesk/app/bindings/recoverypassword_binding.dart';
import 'package:fleetdesk/app/ui/android/demos/geolocator_page.dart';
import 'package:fleetdesk/app/ui/android/recovery_password/recovery_password_notification.dart';
import 'package:fleetdesk/app/ui/android/recovery_password/recovery_password_page.dart';
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
    GetPage(
        name: Routes.GEOLOCATOR,
        page: () => GeolocatorPage(),
        binding: GeolocatorBinding()
    ),
    GetPage(
        name: Routes.RECOVERYPASSWORD, page: () => RecoveryPasswordPage(), binding: RecoveryPasswordBinding()
    ),
    GetPage(
        name: Routes.RECOVERYPASSWORDNOTIFICATION, page: () => RecoveryPasswordNotificationPage(), binding: RecoveryPasswordNotificationBinding()
    ),
  ];
}
