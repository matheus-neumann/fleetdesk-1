import 'package:fleetdesk/app/controller/demos/geolocator_controller.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/data/provider/api.dart';
import 'package:fleetdesk/app/data/repository/posts_repository.dart';
import 'package:http/http.dart' as http;

class GeolocatorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GeolocatorController>(() {
      return GeolocatorController();
    });
  }
}
