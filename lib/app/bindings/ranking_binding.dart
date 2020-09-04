import 'package:fleetdesk/app/controller/ranking/ranking_controller.dart';
import 'package:get/get.dart';

class RankingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RankingController>(() {
      return RankingController();
    });
  }
}
