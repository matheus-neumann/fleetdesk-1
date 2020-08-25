import 'package:fleetdesk/app/controller/create_account/create_account_controller.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/data/provider/api.dart';
import 'package:fleetdesk/app/data/repository/repository.dart';
import 'package:http/http.dart' as http;

class CreateAccountBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateAccountController>(() {
      return CreateAccountController(
          repository:
              Repository(apiClient: MyApiClient(httpClient: http.Client())));
    });
  }
}
