import 'package:fleetdesk/app/controller/demos/geolocator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeolocatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geolocator testing'),
      ),
      body: Container(
        child: GetBuilder<GeolocatorController>(
            init: Get.find<GeolocatorController>(),
            builder: (_) {
              return Container(
                child: Column(
                  children: [
//                    Text(_.myLocation.toString()),
//                    Divider(),
//                    Text(_.myLocation2.toString())
                  ],
                ),
              );
            }),
      ),
    );
  }
}
