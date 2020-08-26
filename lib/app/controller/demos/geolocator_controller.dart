import 'dart:convert';

import 'package:dash_chat/dash_chat.dart';
import 'package:fleetdesk/app/data/model/position.dart';
import 'package:fleetdesk/app/data/provider/db_provider.dart';
import 'package:fleetdesk/app/data/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_background_geolocation/flutter_background_geolocation.dart'
    as bg;

JsonEncoder encoder = new JsonEncoder.withIndent("     ");

class GeolocatorController extends GetxController {
//  bool isMoving;
//  bool enabled;
//  String motionActivity;
//  String odometer;
//  String content;

  final Repository repository;

  GeolocatorController({@required this.repository})
      : assert(repository != null);

  String myLocation = '';

  @override
  void onInit() {
    super.onInit();
    ////
    // 1.  Listen to events (See docs for all 12 available events).
    //

    // Fired whenever a location is recorded
    bg.BackgroundGeolocation.onLocation((bg.Location location) async {
      //location.coords.
      double batteryLevel = location.map['battery']['level'];
      int batteryint = batteryLevel.truncate();
      print('[location] - $location');

      DateTime timestamp = DateTime.parse(location.timestamp);


      print(timestamp.timeZoneName);
      print(timestamp.timeZoneOffset.toString());
      print(timestamp);


      Map<String, dynamic> map = {
        "positions": [
          {
            "vehicle_id": 1,
            "longitude": location.map['coords']['longitude'],
            "latitude": location.map['coords']['latitude'],
            "speed": location.map['coords']['speed'],
            "heading": location.map['coords']['heading'],
            "datetime_write": DateFormat('yyyy-MM-dd HH:mm:ss').format(
                timestamp),
            "datetime_send": DateFormat('yyyy-MM-dd HH:mm:ss').format(
                DateTime.now()),
            "geofence": "0",
            "accuracy": 1,
            "is_moving": 0,
            "battery_is_charging": 0,
            "odometer":
            double.parse(location.map['odometer'].toStringAsFixed(2)),
            "battery_level": batteryint
          }
        ]
      };

      print(map);
//      await DBProvider.db.initDB();
      await DBProvider.db.createPosition(Position.fromJson(map));
      await sendPosition(map);

      myLocation = location.toString();
      update();
    });

    // Fired whenever the plugin changes motion-state (stationary->moving and vice-versa)
    bg.BackgroundGeolocation.onMotionChange((bg.Location location) {
      print('[motionchange] - $location');
    });

    // Fired whenever the state of location-services changes.  Always fired at boot
    bg.BackgroundGeolocation.onProviderChange((bg.ProviderChangeEvent event) {
      print('[providerchange] - $event');
    });

    bg.BackgroundGeolocation.onHeartbeat((bg.HeartbeatEvent event) {
      print('[onHeartbeat] ${event}');
      myLocation = '[onHeartbeat] ${event}';
      update();

      // You could request a new location if you wish.
      bg.BackgroundGeolocation.getCurrentPosition(samples: 1, persist: true)
          .then((bg.Location location) {
        print('[getCurrentPosition] ${location}');
        myLocation = '[getCurrentPosition] ${location}';
        update();
      });
    });

    ////
    // 2.  Configure the plugin
    //
    bg.BackgroundGeolocation.ready(
      bg.Config(
        desiredAccuracy: bg.Config.DESIRED_ACCURACY_HIGH,
        distanceFilter: 10.0,
        desiredOdometerAccuracy: 50,
        minimumActivityRecognitionConfidence: 40,
        // Adjust lower for low-end devices
        allowIdenticalLocations: false,
        stopOnTerminate: true,
        startOnBoot: false,
        preventSuspend: true,
        logMaxDays: 1,
        locationUpdateInterval: 1000,
        heartbeatInterval: 30,
        disableStopDetection: true,
        pausesLocationUpdatesAutomatically: false,
        useSignificantChangesOnly: false,
        foregroundService: true,
        //isMoving: true,
        stopTimeout: 5,

        debug: false,
        logLevel: bg.Config.LOG_LEVEL_ERROR,
        reset: true,
      ),
    ).then((bg.State state) {
      if (!state.enabled) {
        ////
        // 3.  Start the plugin.
        //
        bg.BackgroundGeolocation.start();
      }
    });
  }

  sendPosition(Map data) async {
    var response = await repository.sendPosition(data);
    if (response != null) {
      print(response);
    } else {
      print('response == null');
    }
  }

//  void onClickEnable(enabled) {
//    if (enabled) {
//      bg.BackgroundGeolocation.start().then((bg.State state) {
//        print('[start] success $state');
//        enabled = state.enabled;
//        isMoving = state.isMoving;
//      });
//    } else {
//      bg.BackgroundGeolocation.stop().then((bg.State state) {
//        print('[stop] success: $state');
//        // Reset odometer.
//        bg.BackgroundGeolocation.setOdometer(0.0);
//
//        //odometer = '0.0';
//        odometer = state.odometer.toString();
//        enabled = state.enabled;
//        isMoving = state.isMoving;
//        update();
//      });
//    }
//  }
//
//  // Manually toggle the tracking state:  moving vs stationary
//  void onClickChangePace() {
//    isMoving = !isMoving;
//    print("[onClickChangePace] -> $isMoving");
//
//    bg.BackgroundGeolocation.changePace(isMoving).then((bool isMoving) {
//      print('[changePace] success $isMoving');
//    }).catchError((e) {
//      print('[changePace] ERROR: ' + e.code.toString());
//    });
//  }
//
//  // Manually fetch the current position.
//  void onClickGetCurrentPosition() {
//    bg.BackgroundGeolocation.getCurrentPosition(
//            persist: false, // <-- do not persist this location
//            desiredAccuracy: 0, // <-- desire best possible accuracy
//            timeout: 30000, // <-- wait 30s before giving up.
//            samples: 3 // <-- sample 3 location before selecting best.
//            )
//        .then((bg.Location location) {
//      print('[getCurrentPosition] - $location');
//    }).catchError((error) {
//      print('[getCurrentPosition] ERROR: $error');
//    });
//
//
//  }
//
//  ////
//  // Event handlers
//  //
//
//  void _onLocation(bg.Location location) {
//    print('[location] - $location');
//
//    String odometerKM = (location.odometer / 1000.0).toStringAsFixed(1);
//
//    content = encoder.convert(location.toMap());
//    odometer = odometerKM;
//    update();
//    print('ODOMETRO $odometer');
//  }
//
//  void _onMotionChange(bg.Location location) {
//    print('[motionchange] - $location');
//  }
//
//  void _onActivityChange(bg.ActivityChangeEvent event) {
//    print('[activitychange] - $event');
//    motionActivity = event.activity;
//  }
//
//  void _onProviderChange(bg.ProviderChangeEvent event) {
//    print('$event');
//
//    content = encoder.convert(event.toMap());
//  }
//
//  void _onConnectivityChange(bg.ConnectivityChangeEvent event) {
//    print('$event');
//  }
}
