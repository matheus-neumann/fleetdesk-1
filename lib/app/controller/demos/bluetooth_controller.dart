//import 'package:flutter_blue/flutter_blue.dart';
//import 'package:get/get.dart';
//
//class BluetoothController extends GetxController {
//  FlutterBlue flutterBlue = FlutterBlue.instance;
//
//  List<String> devices = List<String>();
//
//  void scanForDevices() {
//    // Listen to scan results
//    flutterBlue.scanResults.listen((results) {
//      // do something with scan results
//      for (ScanResult r in results) {
//        print('${r.device.name} found! rssi: ${r.rssi}');
//        devices.add('${r.device.name} found! rssi: ${r.rssi}');
//      }
//    });
//
//    // Stop scanning
//    flutterBlue.stopScan();
//  }
//}
