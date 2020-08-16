import 'package:fleetdesk/app/controller/splash/splash_controller.dart';
import 'package:fleetdesk/app/data/provider/api.dart';
import 'package:fleetdesk/app/data/repository/repository.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() {
      return SplashController(
          repository:
              Repository(apiClient: MyApiClient(httpClient: http.Client())));
    });
  }
}
