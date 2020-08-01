import 'dart:convert';

import 'package:get/get.dart';

import 'package:flutter_background_geolocation/flutter_background_geolocation.dart'
    as bg;

JsonEncoder encoder = new JsonEncoder.withIndent("     ");

class GeolocatorController extends GetxController {
  bool isMoving;
  bool enabled;
  String motionActivity;
  String odometer;
  String content;

  @override
  void onInit() {
    super.onInit();

    isMoving = false;
    enabled = false;
    content = '';
    motionActivity = 'UNKNOWN';
    odometer = '0';

    // 1.  Listen to events (See docs for all 12 available events).
    bg.BackgroundGeolocation.onLocation(_onLocation);
    bg.BackgroundGeolocation.onMotionChange(_onMotionChange);
    bg.BackgroundGeolocation.onActivityChange(_onActivityChange);
    bg.BackgroundGeolocation.onProviderChange(_onProviderChange);
    bg.BackgroundGeolocation.onConnectivityChange(_onConnectivityChange);

    // 2.  Configure the plugin
    bg.BackgroundGeolocation.ready(bg.Config(
            desiredAccuracy: bg.Config.DESIRED_ACCURACY_HIGH,
            distanceFilter: 10.0,
            stopOnTerminate: false,
            startOnBoot: true,
            debug: true,
            logLevel: bg.Config.LOG_LEVEL_VERBOSE,
            reset: true))
        .then((bg.State state) {
      enabled = state.enabled;
      isMoving = state.isMoving;
    });
  }

  void onClickEnable(enabled) {
    if (enabled) {
      bg.BackgroundGeolocation.start().then((bg.State state) {
        print('[start] success $state');
        enabled = state.enabled;
        isMoving = state.isMoving;
      });
    } else {
      bg.BackgroundGeolocation.stop().then((bg.State state) {
        print('[stop] success: $state');
        // Reset odometer.
        bg.BackgroundGeolocation.setOdometer(0.0);

        odometer = '0.0';
        enabled = state.enabled;
        isMoving = state.isMoving;
      });
    }
  }

  // Manually toggle the tracking state:  moving vs stationary
  void onClickChangePace() {
    isMoving = !isMoving;
    print("[onClickChangePace] -> $isMoving");

    bg.BackgroundGeolocation.changePace(isMoving).then((bool isMoving) {
      print('[changePace] success $isMoving');
    }).catchError((e) {
      print('[changePace] ERROR: ' + e.code.toString());
    });
  }

  // Manually fetch the current position.
  void onClickGetCurrentPosition() {
    bg.BackgroundGeolocation.getCurrentPosition(
            persist: false, // <-- do not persist this location
            desiredAccuracy: 0, // <-- desire best possible accuracy
            timeout: 30000, // <-- wait 30s before giving up.
            samples: 3 // <-- sample 3 location before selecting best.
            )
        .then((bg.Location location) {
      print('[getCurrentPosition] - $location');
    }).catchError((error) {
      print('[getCurrentPosition] ERROR: $error');
    });
  }

  ////
  // Event handlers
  //

  void _onLocation(bg.Location location) {
    print('[location] - $location');

    String odometerKM = (location.odometer / 1000.0).toStringAsFixed(1);

    content = encoder.convert(location.toMap());
    odometer = odometerKM;
  }

  void _onMotionChange(bg.Location location) {
    print('[motionchange] - $location');
  }

  void _onActivityChange(bg.ActivityChangeEvent event) {
    print('[activitychange] - $event');
    motionActivity = event.activity;
  }

  void _onProviderChange(bg.ProviderChangeEvent event) {
    print('$event');

    content = encoder.convert(event.toMap());
  }

  void _onConnectivityChange(bg.ConnectivityChangeEvent event) {
    print('$event');
  }
}
