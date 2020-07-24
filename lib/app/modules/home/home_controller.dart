import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/data/models/post_model.dart';
import 'package:fleetdesk/app/data/repository/posts_repository.dart';
import 'package:meta/meta.dart';

class HomeController extends GetxController {
  final PostsRepository repository;

  HomeController({@required this.repository}) : assert(repository != null);

  @override
  void onInit() {
    getAll();
    ScreenUtil.init(Get.context,
        width: 360, height: 640, allowFontScaling: true);

    super.onInit();
  }

  final _postsList = List<PostModel>().obs;

  get postsList => this._postsList.value;

  set postsList(value) => this._postsList.value = value;

  getAll() {
    repository.getAll().then((data) {
      this.postsList = data;
    });
  }
}