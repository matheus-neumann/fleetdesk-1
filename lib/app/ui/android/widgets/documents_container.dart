import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocumentsContainer extends StatelessWidget {

  var doc;


  DocumentsContainer({this.doc});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 58.h,
                  width: 328.w,
                  //margin: EdgeInsets.only(left: 16.w),
                  decoration: BoxDecoration(
                    color: Color(0xff1D2634),
                    borderRadius: BorderRadius.circular(
                        20), // TODO - Verify radius of Container Fields
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12.w,
                      ),
                      // Checkbox(

                      // ),

                      SizedBox(
                        width: 34.w,
                      ),
                      Text(
                        '25214542147854785474',
                        style: TextStyle(color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w500)
                      )
                    ],
                  ),
                );
  }
}