import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Background extends StatelessWidget {
  Color color;
  Function meuMetodo;

  Background(this.color, this.meuMetodo);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360.w,
          height: 333.h,
          color: color,
          child: Container(
            color: Colors.yellow,
            width: 224.w,
            height: 50.h,
            margin: EdgeInsets.only(
                top: 134.h, bottom: 155.h, left: 76.w, right: 75.w),
          ),
        ),
        Container(
          width: 174.w,
          height: 32.h,
          margin: EdgeInsets.only(
              top: 238.h, left: 93.w, right: 93.w, bottom: 37.h),
          child: FlatButton(
            child: FittedBox(
              child: Text(
                'Ainda nao possui conta?\nCrie agora mesmo',
                style: TextStyle(fontSize: 14.sp),
                textAlign: TextAlign.center,
              ),
            ),
            onPressed: meuMetodo,
          ),
        ),
      ],
    );
  }


}
