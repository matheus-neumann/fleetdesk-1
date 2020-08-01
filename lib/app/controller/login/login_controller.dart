import 'package:get/get.dart';
import 'package:fleetdesk/app/data/model/model.dart';
import 'package:fleetdesk/app/data/repository/posts_repository.dart';
import 'package:meta/meta.dart';

class LoginController extends GetxController {
  final MyRepository repository;

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
}
