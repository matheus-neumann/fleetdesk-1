import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fleetdesk/app/data/model/user.dart';
import 'package:fleetdesk/app/data/model/user_token.dart';
import 'package:fleetdesk/app/data/repository/repository.dart';
import 'package:fleetdesk/app/ui/android/alerts/alerts_page.dart';
import 'package:fleetdesk/app/ui/android/menu/menu_page.dart';
import 'package:fleetdesk/app/ui/android/pin_code/pin_code_page.dart';
import 'package:fleetdesk/app/ui/android/tasks/tasks_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/active_tasks.dart';
import 'package:fleetdesk/app/ui/android/widgets/done_tasks.dart';
import 'package:fleetdesk/app/ui/android/widgets/partial_tasks.dart';
import 'package:fleetdesk/app/ui/messages.dart';
import 'package:fleetdesk/app/ui/theme/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  static Controller get to => Get.find<Controller>();

  final Repository repository;
  final storage = new FlutterSecureStorage();
  var connectivitySubscription;

  FlutterBlue flutterBlue = FlutterBlue.instance;
  List<String> devices = List<String>();

  JsonEncoder encoder = new JsonEncoder.withIndent("     ");
  String myLocation = '';

  //Register
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  //Login
  bool obscureText = true;
  bool savePassword = false;
  UserToken userToken;
  User user;
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //VehiclePlate
  TextEditingController plateController = TextEditingController();

  //PinCode
  TextEditingController pinController = TextEditingController();
  bool pinCodeSuccess = false;

  Controller({@required this.repository}) : assert(repository != null);

//  @override
//  void onInit() {
//    super.onInit();
//    ////
//    // 1.  Listen to events (See docs for all 12 available events).
//    //
//
//    // Fired whenever a location is recorded
//    bg.BackgroundGeolocation.onLocation((bg.Location location) async {
//      //location.coords.
//      double batteryLevel = location.map['battery']['level'];
//      int batteryint = batteryLevel.truncate();
//      print('[location] - $location');
//
//      DateTime timestamp = DateTime.parse(location.timestamp);
//
////      print(timestamp.timeZoneName);
////      print(timestamp.timeZoneOffset.toString());
////      print(timestamp);
//
//      int batteryIsCharging = location.battery.isCharging ? 1 : 0;
//      int isMoving = location.isMoving ? 1 : 0;
//
//      Map<String, dynamic> map = {
//        "positions": [
//          {
//            "vehicle_id": 1,
//            "longitude": location.map['coords']['longitude'],
//            "latitude": location.map['coords']['latitude'],
//            "speed": location.map['coords']['speed'],
//            "heading": location.map['coords']['heading'],
//            "datetime_write":
//                DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()),
//            "datetime_send":
//                DateFormat('yyyy-MM-dd HH:mm:ss').format(timestamp),
//            "geofence": "0",
//            "accuracy": location.map['coords']['accuracy'],
//            "is_moving": isMoving,
//            "battery_is_charging": batteryIsCharging,
//            "odometer":
//                double.parse(location.map['odometer'].toStringAsFixed(2)),
//            "battery_level": batteryint
//          }
//        ]
//      };
//
//      print(map);
////      await DBProvider.db.initDB();
//      await DBProvider.db.createPosition(Position.fromJson(map));
//      await sendPosition(map);
//
//      myLocation = location.toString();
//      update();
//    });
//
//    // Fired whenever the plugin changes motion-state (stationary->moving and vice-versa)
//    bg.BackgroundGeolocation.onMotionChange((bg.Location location) {
//      print('[motionchange] - $location');
//    });
//
//    // Fired whenever the state of location-services changes.  Always fired at boot
//    bg.BackgroundGeolocation.onProviderChange((bg.ProviderChangeEvent event) {
//      print('[providerchange] - $event');
//    });
//
//    bg.BackgroundGeolocation.onHeartbeat((bg.HeartbeatEvent event) {
//      print('[onHeartbeat] ${event}');
//      myLocation = '[onHeartbeat] ${event}';
//      update();
//
//      // You could request a new location if you wish.
//      bg.BackgroundGeolocation.getCurrentPosition(samples: 1, persist: true)
//          .then((bg.Location location) {
//        print('[getCurrentPosition] ${location}');
//        myLocation = '[getCurrentPosition] ${location}';
//        update();
//      });
//    });
//
//    ////
//    // 2.  Configure the plugin
//    //
//    bg.BackgroundGeolocation.ready(
//      bg.Config(
//        desiredAccuracy: bg.Config.DESIRED_ACCURACY_HIGH,
//        distanceFilter: 10.0,
//        desiredOdometerAccuracy: 50,
//        minimumActivityRecognitionConfidence: 40,
//        // Adjust lower for low-end devices
//        allowIdenticalLocations: false,
//        stopOnTerminate: true,
//        startOnBoot: false,
//        preventSuspend: true,
//        logMaxDays: 1,
//        locationUpdateInterval: 1000,
//        heartbeatInterval: 30,
//        disableStopDetection: true,
//        pausesLocationUpdatesAutomatically: false,
//        useSignificantChangesOnly: false,
//        foregroundService: true,
//        //isMoving: true,
//        stopTimeout: 5,
//
//        debug: false,
//        logLevel: bg.Config.LOG_LEVEL_ERROR,
//        reset: true,
//      ),
//    ).then((bg.State state) {
//      if (!state.enabled) {
//        ////
//        // 3.  Start the plugin.
//        //
//        bg.BackgroundGeolocation.start();
//      }
//    });
//  }

  sendPosition(Map data) async {
    var response = await repository.sendPosition(data);
    if (response != null) {
      print(response);
    } else {
      print('response == null');
    }
  }

  generateToken(int userId) async {
    var response = await repository.generateToken(userId);
    if (response != null) {
      print(response);
    } else {
      print('response == null');
    }
  }

  activateUser(int userId, Map data) async {
    return await repository.activateUser(userId, data);
  }

  Future<Response> signUp(Map register) async {
    return await repository.signUp(register);
  }

  login(Map map) async {
    var response = await repository.login(map);
    if (response != null) {
      print(response);
      if (response?.data != null) {
        print(response.data);
        if (response.data[AppStrings.success] == true) {
          userToken = UserToken.fromJson(response.data);
          await storage.write(key: AppStrings.token, value: userToken.token);
          await getUser(map['login']);
        } else {
          print('${AppStrings.success} == false');
        }
      } else {
        print('response.data == null');
      }
    } else {
      print('response == null');
    }
  }

  getUser(String email) async {
    print('email: $email');
    var response = await repository.getUser(email);
    if (response != null) {
      print(response);
      List listOfUsers = response.data['data'];
      Map map = listOfUsers.first;
      user = User.fromJson(map);
      var pinResponse = await generateToken(user.id);
      print(pinResponse);
      Get.to(PinCodePage());
    } else {
      print('response == null');
    }
  }

  associatePlate(Map data) async {
    return await repository.associatePlate(data);
  }

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

  int indexTasks = 1;

  final List<Widget> childrenTasks = [
    ActiveTasksPage(),
    PartialTasksPage(),
    DoneTasksPage(),
  ];

  int indexNavBar = 0;

  final List<Widget> childrenBottom = [
    TasksPage(),
    MessagesPage(),
    AlertsPage(),
    MenuPage(),
  ];

  void onTabTapped(index) {
//    Get.put(Controller());
    indexNavBar = index;
    update();
  }
}
