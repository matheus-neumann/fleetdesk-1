import 'package:fleetdesk/app/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/data/providers/posts_provider.dart';
import 'package:fleetdesk/app/data/repository/posts_repository.dart';
import 'package:http/http.dart' as http;
import 'home_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  //repository injection
  final PostsRepository repository = PostsRepository(
    apiClient: PostsProvider(
      httpClient: http.Client(),
    ),
  );

  void meuMetodo() {
    Get.snackbar('Lud é', 'viadao',
        snackPosition: SnackPosition.BOTTOM);
  }

  void outroMetodo() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetBuilder<HomeController>(
          init: HomeController(repository: repository),
          builder: (_) {
            return Stack(
              children: [
                Background(Colors.grey, outroMetodo),
                Container(
                  width: 328.w,
                  height: 320.h,
                  margin: EdgeInsets.only(
                    top: 225.h,
                    bottom: 95.h,
                    left: 16.w,
                    right: 16.w
                  ),
                  color: Colors.green,
                  child: Column(children: [


                  ],),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


