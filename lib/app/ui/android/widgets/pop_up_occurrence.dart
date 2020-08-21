import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'app_button.dart';

class PopUpOccurrence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Get.back,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTap: () => {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  20), // TODO - Verify radius of Container Fields
            ),
            height: 468.h,
            width: 328.w,
            margin: EdgeInsets.only(top: 96.h, bottom: 76.h, left: 16.w, right: 16.w),
            child: Column(
                children: [
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    'Informe o tipo\n'
                    'de ocorrência',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: red,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  AppButton(text: 'Ocorrência 1', width: 296.w, color: Colors.grey, navPage: () => {print('teste')},),
                  SizedBox(
                    height: 8.h,
                  ),
                  AppButton(text: 'Ocorrência 2', width: 296.w, color: Colors.grey, navPage: () => {print('teste')},),
                  SizedBox(
                    height: 8.h,
                  ),
                  AppButton(text: 'Ocorrência 3', width: 296.w, color: Colors.grey, navPage: () => {print('teste')},),
                  SizedBox(
                    height: 8.h,
                  ),
                  AppButton(text: 'Ocorrência 4', width: 296.w, color: Colors.grey, navPage: () => {print('teste')},),
                  SizedBox(
                    height: 8.h,
                  ),
                  AppButton(text: 'Ocorrência 5', width: 296.w, color: Colors.grey,navPage: () => {print('teste')},),
                  SizedBox(
                    height: 18.h,
                  ),
                  AppButton(text: 'Confirmar', width: 296.w, color: red, textColor: Colors.white, navPage: () => {print('teste')},),
                ],
              ),
          ),
        ),
      ),
    );
  }
}