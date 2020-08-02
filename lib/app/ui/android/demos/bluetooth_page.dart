import 'package:fleetdesk/app/controller/demos/bluetooth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BluetoothPage extends StatelessWidget {
  BluetoothController bluetoothController = Get.find<BluetoothController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bluetooth testing'),
        ),
        body: GetBuilder<BluetoothController>(
            init: bluetoothController,
            builder: (_) {
              return Column(
                children: [
                  RaisedButton(
                    child: Text('Scan for devices'),
                    onPressed: () {
                      _.scanForDevices();
                    },
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      return Text(_.devices[index]);
                    },
                    itemCount: _.devices.length,
                  ),
                ],
              );
            }));
  }
}
