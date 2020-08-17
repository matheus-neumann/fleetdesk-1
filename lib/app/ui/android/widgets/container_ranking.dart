import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerRanking extends StatelessWidget {

  String text;
  var top;
  var bottom;

  ContainerRanking({this.text, this.top, this.bottom});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98.h,
      width: 165.w,
      decoration: BoxDecoration(
          color: appBarColor,
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Stack(
        children: [
          Container(
            height: 16.h,
            margin: EdgeInsets.only(left: 15.w, top: 15.h),
            child: FittedBox(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ),
          Container(
            // TODO - RANKING PONTS
          ),
          Container(
            height: 14.h,
            margin: EdgeInsets.only(left: 68.w, top: 58.h),
            child: FittedBox(
              child: Text(
                "pontuação",
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}