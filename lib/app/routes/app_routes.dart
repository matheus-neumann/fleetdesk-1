import 'package:get/get.dart';
import 'package:fleetdesk/app/modules/home/home_page.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => HomePage()),
  ];
}
