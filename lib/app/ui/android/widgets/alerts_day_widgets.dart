import 'package:fleetdesk/app/controller/alerts/alerts_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AlertsContainer extends StatelessWidget {

  String title;
  String text;
  String date;

  AlertsContainer({this.title, this.text, this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AlertsController>(
          init: Get.find<AlertsController>(),
          builder: (_) {
            return Container(
              //height: 122.h,
              width: 328.w,
              margin: EdgeInsets.only(left: 16.w),
              child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 16.w),
                  child: Text(
                    'Ontem, 13 de Julho de 2020',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white
                    ),
                  ),
                ),
            );}));
  }
}

class LineDashedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..strokeWidth = 1;
    var max = 301.w;
    var dashWidth = 5;
    var dashSpace = 5;
    double startX = 0;
    while (max >= 0) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      final space = (dashSpace + dashWidth);
      startX += space;
      max -= space;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
