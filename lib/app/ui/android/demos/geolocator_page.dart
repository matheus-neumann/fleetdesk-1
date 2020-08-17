import 'package:fleetdesk/app/controller/demos/geolocator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeolocatorPage extends StatelessWidget {
  GeolocatorController geolocatorController = Get.find<GeolocatorController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geolocator testing'),
      ),
      body: Container(
        child: GetBuilder<GeolocatorController>(
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
