import 'package:fleetdesk/app/controller/demos/bluetooth_controller.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BluetoothPage extends StatelessWidget {
  BluetoothController bluetoothController = Get.find<BluetoothController>();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
        backgroundColor: splashColor,
        body: GetBuilder<BluetoothController>(
            init: bluetoothController,
            builder: (_) {
              return SingleChildScrollView(
                  child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Stack(children: <Widget>[
                    Container(
                        height: 67.5.h,
                        width: 360.w,
                        decoration: BoxDecoration(
                            color: appBarColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)))),
                    Container(
                      margin: EdgeInsets.only(top: 19.5.h, bottom: 16.h),
                      height: 32.h,
                      width: 360.w,
                      child: Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(
                                  left: 16.w,
                                  right: 334.w,
                                  top: 8.h,
                                  bottom: 8.h),
                              width: 10.w,
                              child: InkWell(
                                  child: Icon(Icons.arrow_back_ios,
                                      color: Color(0xffffffff)),
                                  onTap: () {
                                    Get.toNamed(Routes.MENU);
                                  })),
                          Container(
                            width: 96.w,
                            height: 30.h,
                            margin: EdgeInsets.only(
                                left: 128.w, top: 2.h, right: 112.w),
                            child: FittedBox(
                              // TODO - Verify size and position of text
                              child: Text(
                                'Bluetooth',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 90.h),
                        child: Icon(
                          Icons.bluetooth,
                          color: Colors.white,
                          size: 54.sp,
                        ),
                      ),
                      SizedBox(height: 17.h),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Para vincular um veículo com módulo\nBluetooth primeiramente conecte o\ndispositivo nas configurações de Bluetooth do\ncelular. Após essa etapa clique em atualizar.",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            //fontFamily: 'Montserrat'
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Container(
                          alignment: Alignment.center,
                          child: Row(children: [
                            SizedBox(
                              width: 99.w,
                            ),
                            Icon(
                              Icons.refresh,
                              color: Colors.white,
                            ),
                            FlatButton(
                              child: Text(
                                'Atualizar dispositivos',
                                // TODO - Adjust font size, font weight and configure to navigate for 'Recovery Password' page
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                _.scanForDevices();
                              },
                            ),
                          ])),
                      SizedBox(
                        height: 38.h,
                      ),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 328.w,
                            height: 208.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          // TODO - Verify radius of Container Fields
                          Container(
                              margin: EdgeInsets.only(left: 16.w, top: 16.h),
                              child: Text(
                                'Dispositivos',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: red,
                                ),
                              )),
                        ],
                      ),
                    ]),
                  ]),
                ),
              ));
            }));
    // Widget build(BuildContext context) {
    //   return Scaffold(
    //       appBar: AppBar(
    //         title: Text('Bluetooth testing'),
    //       ),
    //       body: GetBuilder<BluetoothController>(
    //           init: bluetoothController,
    //           builder: (_) {
    //             return Column(
    //               children: [
    //                 RaisedButton(
    //                   child: Text('Scan for devices'),
    //                   onPressed: () {
    //                     _.scanForDevices();
    //                   },
    //                 ),
    //                 ListView.builder(
    //                   shrinkWrap: true,
    //                   itemBuilder: (ctx, index) {
    //                     return Text(_.devices[index]);
    //                   },
    //                   itemCount: _.devices.length,
    //                 ),
    //               ],
    //             );
    //           }));
  }
}
