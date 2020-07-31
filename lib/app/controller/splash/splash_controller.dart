import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/data/model/model.dart';
import 'package:fleetdesk/app/data/repository/posts_repository.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:meta/meta.dart';

class HomeController extends GetxController {
  final MyRepository repository;

  HomeController({@required this.repository}) : assert(repository != null);

  final _postsList = List<MyModel>().obs;

  get postList => this._postsList.value;

  set postList(value) => this._postsList.value = value;

  final _post = MyModel().obs;

  get post => this._post.value;

  set post(value) => this._post.value = value;

  getAll() {
    repository.getAll().then((data) {
      this.postList = data;
    });
  }

  adicionar(post) {}

  //dismissible
  excluir(id) {}

  //dismissible
  editar() {}

  details(post) {
    this.post = post;
    Get.toNamed(Routes.LOGIN);
  }

  initScreenSettings() {}
}
