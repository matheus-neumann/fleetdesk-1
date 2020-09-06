import 'package:fleetdesk/app/controller/create_account/controller.dart';
import 'package:fleetdesk/app/data/model/position.dart';
import 'package:fleetdesk/app/data/provider/db_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeolocatorPage extends StatelessWidget {
  Controller geolocatorController = Get.find<Controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          List<Position> list = await DBProvider.db.getAllEmployees();
          print(list.toString());
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Geolocator testing'),
      ),
      body: Container(
        child: GetBuilder<Controller>(
            init: geolocatorController,
            initState: (_) {
              //geolocatorController.onClickEnable(geolocatorController.enabled);
            },
            builder: (_) {
              return Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Text(_.myLocation),
                      ),
//                      Text('isMoving? ${_.isMoving.toString()}'),
//                      Text('isEnabled? ${_.enabled.toString()}'),
//                      Text(_.motionActivity),
//                      Text(_.content),
//                      Text(_.odometer),
//                      RaisedButton(
//                        child: Text('onClickChangePace'),
//                        onPressed: () {
//                          _.onClickChangePace();
//                          _.update();
//                        },
//                      ),
//                      RaisedButton(
//                        child: Text('onClickGetCurrentPosition'),
//                        onPressed: () {
//                          _.onClickGetCurrentPosition();
//                          _.update();
//                        },
//                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
