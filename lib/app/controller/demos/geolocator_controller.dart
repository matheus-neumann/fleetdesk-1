import 'package:get/get.dart';

import 'package:flutter_background_geolocation/flutter_background_geolocation.dart'
    as bg;

class GeolocatorController extends GetxController {
  //bg.ProviderChangeEvent event;

  @override
  void onInit() {
    super.onInit();

    bg.BackgroundGeolocation.onLocation((bg.Location location) {
      print('[location] - $location');
//      myLocation = location;
//      update();
    });

    // Fired whenever the plugin changes motion-state (stationary->moving and vice-versa)
    bg.BackgroundGeolocation.onMotionChange((bg.Location location) {
      print('[motionchange] - $location');
      //Get.snackbar('Localização', message)
//      myLocation2 = location;
//      update();
    });

    bg.BackgroundGeolocation.getCurrentPosition();

    // Fired whenever the state of location-services changes.  Always fired at boot
    bg.BackgroundGeolocation.onProviderChange((bg.ProviderChangeEvent event) {
      //print('[providerchange] - $event');
    });

    ////
    // 2.  Configure the plugin
    //
    bg.BackgroundGeolocation.ready(
      bg.Config(
        desiredAccuracy: bg.Config.DESIRED_ACCURACY_HIGH,
        distanceFilter: 10.0,
        stopOnTerminate: false,
        startOnBoot: true,
        debug: true,
        logLevel: bg.Config.LOG_LEVEL_VERBOSE,
      ),
    ).then((bg.State state) {
      if (!state.enabled) {
        ////
        // 3.  Start the plugin.
        //
        bg.BackgroundGeolocation.changePace(true);

        bg.BackgroundGeolocation.start();
      }
    });
  }
}
