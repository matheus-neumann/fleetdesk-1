import 'package:fleetdesk/app/controller/controller.dart';
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
    return GetBuilder<Controller>(
        init: Controller.to,
        builder: (_) {
          return Container(
            //height: 122.h,
            width: 328.w,
            margin: EdgeInsets.only(left: 16.w),
            child: Container(
              //height: 117.h,
              width: 328.w,
              decoration: BoxDecoration(
                color: Color(0xff1D2634),
                borderRadius: BorderRadius.circular(
                    20), // TODO - Verify radius of Container Fields
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 8.w),
                    child: Text(
                      'teste',
                      // _.alerts[index].title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 8.w),
                    child: Text(
                      'teste',
                      //_.alerts[index].notification,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 8.w),
                      alignment: Alignment.centerLeft,
                      child: CustomPaint(
                        painter: LineDashedPainter(),
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 244.w),
                    child: Text(
                      //"${_.alerts[index].hour} | ${_.alerts[index].day}",
                      'teste',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                ],
              ),
            ),
          );
        });
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
