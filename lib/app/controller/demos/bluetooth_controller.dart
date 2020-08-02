import 'dart:convert';

import 'package:get/get.dart';

import 'package:flutter_background_geolocation/flutter_background_geolocation.dart'
    as bg;
import 'package:flutter_blue/flutter_blue.dart';

class BluetoothController extends GetxController {
  FlutterBlue flutterBlue = FlutterBlue.instance;

  List<String> devices = List<String>();

  void scanForDevices() {
    // Listen to scan results
    flutterBlue.scanResults.listen((results) {
      // do something with scan results
      for (ScanResult r in results) {
        print('${r.device.name} found! rssi: ${r.rssi}');
        devices.add('${r.device.name} found! rssi: ${r.rssi}');
      }
    });

    // Stop scanning
    flutterBlue.stopScan();
  }
}
