import 'package:fleetdesk/app/data/model/user.dart';
import 'package:fleetdesk/app/data/model/user_token.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/theme/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/data/model/model.dart';
import 'package:fleetdesk/app/data/repository/repository.dart';
import 'package:meta/meta.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginController extends GetxController {
  final Repository repository;

  bool obscureText = true;
  bool savePassword = false;
  UserToken userToken;
  User user;

  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final storage = new FlutterSecureStorage();

  LoginController({@required this.repository}) : assert(repository != null);

  final _post = MyModel().obs;

  get post => this._post.value;

  set post(value) => this._post.value = value;

  editar(post) {
    print('editar');
  }

  delete(id) {
    print('deletar');
  }

  login(Map map) async {
    var response = await repository.login(map);
    if (response != null) {
      print(response);
      if (response?.data != null) {
        print(response.data);
        if (response.data[AppStrings.success] == true) {
          userToken = UserToken.fromJson(response.data);
          await storage.write(key: AppStrings.token, value: userToken.token);
          await getUser(map['login']);
        } else {
          print('${AppStrings.success} == false');
        }
      } else {
        print('response.data == null');
      }
    } else {
      print('response == null');
    }
  }

  getUser(String email) async {
    print('email: $email');
    var response = await repository.getUser(email);
    if (response != null) {
      print(response);
      List listOfUsers = response.data['data'];
      Map map = listOfUsers.first;
      user = User.fromJson(map);
      Get.toNamed(Routes.TASKS);
    } else {
      print('response == null');
    }
  }
}
