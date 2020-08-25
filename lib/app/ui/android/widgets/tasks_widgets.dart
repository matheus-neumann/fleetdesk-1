import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/tasks/tasks_info_page.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TaskContainer extends StatelessWidget {

  String name;
  String iconName;
  String adress;

  TaskContainer({this.name, this.iconName, this.adress});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 117.h,
      width: 328.w,
      margin: EdgeInsets.only(left: 16.w),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.TASKS_INFO);
        },
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
              Row(
                children: [
                  SizedBox(
                    width: 9.w,
                    //height: 10.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.h),
                    child: Text(
                      "Rodrigo Albuquerque Santos",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 47.w,
                  ),
                  Container(
                    height: 25.h,
                    width: 25.w,
                    margin: EdgeInsets.only(top: 5.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 2.w),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(2),
                      child: Icon(
                          Icons.phone, color: red, size: 15.sp
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 11.h,
              ),
              Container(margin: EdgeInsets.only(left: 8.w), alignment: Alignment.centerLeft,child: CustomPaint(painter: LineDashedPainter(),)),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Container(
                    height: 15.h,
                    width: 15.w,
                    margin: EdgeInsets.only(left: 8.w, bottom: 17.h),
                    decoration: BoxDecoration(
                      color: Color(0xff33B62025),
                      shape: BoxShape.circle,
                      //border: Border.all(color: Colors.grey, width: 3.w),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(4.w),
                      height: 9.h,
                      width: 9.w,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(color: red, width: 2.w),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    //margin: EdgeInsets.only(top: 19.h),
                    child: RichText(
                      text: TextSpan(
                          text: 'Endereço\n',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Rua Ferreira Viana, 528, Porto...', style: TextStyle(fontSize: 14.sp, color: Colors.white)),
                          ]),
                    ),

                  ),
                  SizedBox(
                    width: 67.5.w,
                  ),
                  Container(
                    //alignment: Alignment.centerRight,
                    height: 25.h,
                    width: 25.w,
                    //margin: EdgeInsets.only(top: 19.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      //border: Border.all(color: Colors.grey, width: 3.w),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(2),
                      child: Icon(
                        Icons.navigation, color: black, //size: 15.sp
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Container( margin: EdgeInsets.only(left: 8.w), alignment: Alignment.centerLeft,child: CustomPaint(painter: LineDashedPainter(),)),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 8.w),
                    child: Icon(
                      Icons.today, color: red,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "20 de Fevereiro de 2020 (10:30 - 18:30)",
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.white
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
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
