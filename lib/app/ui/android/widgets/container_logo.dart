import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerLogo extends StatelessWidget {

  var height;
  var rightMarginLogo;
  var topMarginLogo;
  var bottomMarginLogo;

  ContainerLogo(this.height, this.rightMarginLogo, this.topMarginLogo, this.bottomMarginLogo);

  @override
  Widget build(BuildContext context) {
    return Container(
              child: Container(
                width: 224.w,
                height: 50.h,
                margin: EdgeInsets.only(
                    top: topMarginLogo, left: 68.w, bottom: bottomMarginLogo, right: rightMarginLogo),
                child: Image.asset(AppAssets.fleetdeskLogo),
              ),
              width: 360.w,
              height: height,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1182),
                    spreadRadius: 74,
                    blurRadius: 74,
                    offset: Offset(
                        0.w, 42.h), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.only(
                  // TODO - Verify radius of Container Logo
                    bottomLeft: Radius.elliptical(200, 15),
                    bottomRight: Radius.elliptical(200, 15)),
                gradient: LinearGradient(
                  // TODO - Verify gradient colors
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF0E1828),
                    Color(0xFF090E19)
                  ],
                ),
              ),
            );
  }
}