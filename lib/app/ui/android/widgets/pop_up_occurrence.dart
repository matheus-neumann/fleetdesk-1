import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PopUpOccurrence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 447.h,
      width: 328.w,
      margin: EdgeInsets.only(top: 96.h, bottom: 97.h, left: 16.w, right: 16.w),
      child: AlertDialog(
        content: Column(
          children: [
            Align(alignment: Alignment.center, child: Text(
              'Informe o tipo\n'
              'de ocorrência'
            ),)
          ],
        ),
        ),
    );
  }
}