import 'dart:convert';

import 'package:dash_chat/dash_chat.dart';
import 'package:dio/dio.dart';
import 'package:fleetdesk/app/data/model/position.dart';
import 'package:fleetdesk/app/data/model/user.dart';
import 'package:fleetdesk/app/data/model/user_token.dart';
import 'package:fleetdesk/app/data/provider/db_provider.dart';
import 'package:fleetdesk/app/data/repository/repository.dart';
import 'package:fleetdesk/app/ui/android/alerts/alerts_page.dart';
import 'package:fleetdesk/app/ui/android/main_page/main_page.dart';
import 'package:fleetdesk/app/ui/android/menu/menu_page.dart';
import 'package:fleetdesk/app/ui/android/pin_code/pin_code_page.dart';
import 'package:fleetdesk/app/ui/android/tasks/tasks_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/active_tasks.dart';
import 'package:fleetdesk/app/ui/android/widgets/done_tasks.dart';
import 'package:fleetdesk/app/ui/android/widgets/partial_tasks.dart';
import 'package:fleetdesk/app/ui/messages.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:fleetdesk/app/ui/theme/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:flutter_background_geolocation/flutter_background_geolocation.dart'
    as bg;

class Controller extends GetxController {
  static Controller get to => Get.find<Controller>();

  final Repository repository;
  final storage = new FlutterSecureStorage();
  var connectivitySubscription;
  String connectivityStatus;

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
  int userId;
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //VehiclePlate
  TextEditingController plateController = TextEditingController();

  //PinCode
  TextEditingController pinController = TextEditingController();
  bool pinCodeSuccess = false;

  Controller({@required this.repository}) : assert(repository != null);

  //Messages
  TextEditingController messageController = TextEditingController();
  List<Widget> listMessages = List<Widget>();

//
  @override
  onInit() async {
    super.onInit();

    var response = await apiLogin({
      "grant_type": "client_credentials",
      "client_id": 3,
      "client_secret": "lWPqx8j8KyGmEjJu5KreSmaVJqtoU0VYyXUkZ09G"
    });

    print(response);
    //
  }

  initGeolocator() {
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

//      print(timestamp.timeZoneName);
//      print(timestamp.timeZoneOffset.toString());
//      print(timestamp);

      int batteryIsCharging = location.battery.isCharging ? 1 : 0;
      int isMoving = location.isMoving ? 1 : 0;

      Map<String, dynamic> map = {
        "positions": [
          {
            "vehicle_id": 13,
            "longitude": location.map['coords']['longitude'],
            "latitude": location.map['coords']['latitude'],
            "speed": location.map['coords']['speed'],
            "heading": location.map['coords']['heading'],
            "datetime_write":
                DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()),
            "datetime_send":
                DateFormat('yyyy-MM-dd HH:mm:ss').format(timestamp),
            "geofence": "0",
            "accuracy": location.map['coords']['accuracy'],
            "is_moving": isMoving,
            "battery_is_charging": batteryIsCharging,
            "odometer":
                double.parse(location.map['odometer'].toStringAsFixed(2)),
            "battery_level": batteryint
          }
        ]
      };

      print(map[0]);
      print(map['positions']);
      print(map['positions'][0]);
      if (isOffline()) {
        await DBProvider.db.createPosition({
          "vehicle_id": 13,
          "longitude": location.map['coords']['longitude'],
          "latitude": location.map['coords']['latitude'],
          "speed": location.map['coords']['speed'],
          "heading": location.map['coords']['heading'],
          "datetime_write":
              DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()),
          "datetime_send": DateFormat('yyyy-MM-dd HH:mm:ss').format(timestamp),
          "geofence": "0",
          "accuracy": location.map['coords']['accuracy'],
          "is_moving": isMoving,
          "battery_is_charging": batteryIsCharging,
          "odometer": double.parse(location.map['odometer'].toStringAsFixed(2)),
          "battery_level": batteryint
        });
      } else {
        List<Position> list = await DBProvider.db.getAllEmployees();

        if (list.isNotEmpty) {
          List l = map['positions'];
          for (Position p in list) {
            l.add(Position().toJson(p));
          }
          map['positions'] = l;
          await sendPosition(map);
          await DBProvider.db.deleteAllEmployees();
        } else {
          await sendPosition(map);
        }
      }

//      await DBProvider.db.initDB();

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

    bg.BackgroundGeolocation.onHeartbeat((bg.HeartbeatEvent event) async {
      print('[onHeartbeat] ${event}');
      double batteryLevel = event.location.map['battery']['level'];
      int batteryint = batteryLevel.truncate();
      print('[location] - $event');

      DateTime timestamp = DateTime.parse(event.location.timestamp);

//      print(timestamp.timeZoneName);
//      print(timestamp.timeZoneOffset.toString());
//      print(timestamp);

      int batteryIsCharging = event.location.battery.isCharging ? 1 : 0;
      int isMoving = event.location.isMoving ? 1 : 0;

      Map<String, dynamic> map = {
        "positions": [
          {
            "vehicle_id": 13,
            "longitude": event.location.map['coords']['longitude'],
            "latitude": event.location.map['coords']['latitude'],
            "speed": event.location.map['coords']['speed'],
            "heading": event.location.map['coords']['heading'],
            "datetime_write":
            DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()),
            "datetime_send":
            DateFormat('yyyy-MM-dd HH:mm:ss').format(timestamp),
            "geofence": "0",
            "accuracy": event.location.map['coords']['accuracy'],
            "is_moving": isMoving,
            "battery_is_charging": batteryIsCharging,
            "odometer":
            double.parse(event.location.map['odometer'].toStringAsFixed(2)),
            "battery_level": batteryint
          }
        ]
      };

      print(map);
      if (isOffline()) {
        await DBProvider.db.createPosition({
          "vehicle_id": 13,
          "longitude": event.location.map['coords']['longitude'],
          "latitude": event.location.map['coords']['latitude'],
          "speed": event.location.map['coords']['speed'],
          "heading": event.location.map['coords']['heading'],
          "datetime_write":
          DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()),
          "datetime_send": DateFormat('yyyy-MM-dd HH:mm:ss').format(timestamp),
          "geofence": "0",
          "accuracy": event.location.map['coords']['accuracy'],
          "is_moving": isMoving,
          "battery_is_charging": batteryIsCharging,
          "odometer":
          double.parse(event.location.map['odometer'].toStringAsFixed(2)),
          "battery_level": batteryint
        });
      } else {
        List<Position> list = await DBProvider.db.getAllEmployees();

        if (list.isNotEmpty) {
          List l = map['positions'];
          for (Position p in list) {
            l.add(Position().toJson(p));
          }
          map['positions'] = l;
          await sendPosition(map);
          await DBProvider.db.deleteAllEmployees();
        } else {
          await sendPosition(map);
        }
      }

      List<Position> list = await DBProvider.db.getAllEmployees();
      for (Position p in list) {
        print('BD ======> ${p.datetimeWrite}');
      }

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

  bool isOffline() => connectivityStatus == 'ConnectivityResult.none';

  apiLogin(Map data) async {
    return await repository.apiLogin(data);
  }

  sendPosition(Map data) async {
    print('api');
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
    if (isOffline()) {
      Get.snackbar('Erro', 'parece que vc ta sem internet',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: red,
          colorText: Colors.white);
    } else {
      var response = await repository.login(map);
      if (response != null) {
        print(response);
        if (response?.data != null) {
          print(response.data);
          if (response.data[AppStrings.success] == true) {
            userToken = UserToken.fromJson(response.data);
            await storage.write(key: AppStrings.token, value: userToken.token);
            await getUser(map['login']);
            Get.to(MainPage());
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
  }

  getUser(String email) async {
    print('email: $email');
    var response = await repository.getUser(email);
    if (response != null) {
      print(response);
      List listOfUsers = response.data['data'];
      Map map = listOfUsers.first;
      user = User.fromJson(map);
    } else {
      print('response == null');
    }
  }

  associatePlate(Map data) async {
    return await repository.associatePlate(data);
  }

  sendTextMessage(Map data) async {
    var response = await repository.sendTextMessage(data);
    if (response != null) {
      print(response);
      return response;
    } else {
      print('response == null');
      return null;
    }
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

  int navIndex = 0;

  void navigationApp(index) {
    return navIndex = index;
  }
}
