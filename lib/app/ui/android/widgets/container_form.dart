import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerForm extends StatelessWidget {

  var height;
  var top;
  var bottom;

  ContainerForm({this.height, this.top, this.bottom});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: height,
      margin:
      EdgeInsets.only(top: top, bottom: bottom, right: 16.w, left: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
            20), // TODO - Verify radius of Container Fields
      ),
    );
  }
}