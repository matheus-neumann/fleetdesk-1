import 'package:fleetdesk/app/data/repository/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  static CreateAccountController get to => Get.find<CreateAccountController>();

  final Repository repository;

  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  CreateAccountController({@required this.repository})
      : assert(repository != null);

  signUp(Map register) async {
    repository.signUp(register);
  }

//  associatePlate(Map data) async {
//    return await repository.associatePlate(data);
//  }
}
