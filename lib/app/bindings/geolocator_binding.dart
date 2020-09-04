import 'package:fleetdesk/app/controller/create_account/controller.dart';
import 'package:fleetdesk/app/controller/demos/geolocator_controller.dart';
import 'package:fleetdesk/app/data/provider/api.dart';
import 'package:fleetdesk/app/data/repository/repository.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GeolocatorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controller>(() {
      return Controller(
          repository:
              Repository(apiClient: MyApiClient(httpClient: http.Client())));
    });
  }
}
