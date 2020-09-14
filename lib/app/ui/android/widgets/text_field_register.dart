import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldRegister extends StatelessWidget {
  String hintText;
  TextInputAction textInputAction;
  FocusNode focusNode;
  var topMargin;
  var onFieldSubmitted;
  TextEditingController controller;
  bool hidePassword = false;
  var leftMargin;

  TextFieldRegister(
      {this.hidePassword,
        this.hintText,
      this.textInputAction,
      this.focusNode,
      this.topMargin,
      this.onFieldSubmitted,
        this.leftMargin,
      this.controller});

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(child: (() {
      if(hidePassword == true) {
        return Container(
          width: 296.w,
          height: 48.h,
          margin: EdgeInsets.only(left: leftMargin ?? 32.w, top: topMargin ?? 0.h),
          child: TextFormField(
            obscureText: obscureText,
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.left,
            controller: controller,
            onFieldSubmitted: onFieldSubmitted,
            textInputAction: textInputAction,
            focusNode: focusNode,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: obscureText
                        ? Colors.grey
                        : Colors.blue,
                  ),
                  onPressed: () {
                    obscureText = !obscureText;
                  }),
              hintText: hintText,
              hintStyle: TextStyle(
                color: black,
                fontSize: 14.sp,
              ),
              contentPadding: EdgeInsets.only(top: 16.h, bottom: 16.h, left: 12.w),
              fillColor: greyTextField,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
          ),
        );
      } else {
        return Container(
          width: 296.w,
          height: 48.h,
          margin: EdgeInsets.only(left: leftMargin ?? 32.w, top: topMargin ?? 0.h),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.left,
            controller: controller,
            onFieldSubmitted: onFieldSubmitted,
            textInputAction: textInputAction,
            focusNode: focusNode,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: black,
                fontSize: 14.sp,
              ),
              contentPadding: EdgeInsets.only(top: 16.h, bottom: 16.h, left: 12.w),
              fillColor: greyTextField,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
          ),
        );
      }
    }()));
//      width: 296.w,
//      height: 48.h,
//      //margin: EdgeInsets.only(left: 32.w, top: topMargin),
//      child: TextFormField(
//        textAlignVertical: TextAlignVertical.center,
//        textAlign: TextAlign.left,
//        controller: controller,
//        onFieldSubmitted: onFieldSubmitted,
//        textInputAction: textInputAction,
//        focusNode: focusNode,
//        decoration: InputDecoration(
//          hintText: hintText,
//          hintStyle: TextStyle(
//            color: black,
//            fontSize: 14.sp,
//          ),
//          contentPadding: EdgeInsets.only(top: 16.h, bottom: 16.h, left: 12.w),
//          fillColor: greyTextField,
//          filled: true,
//          border: OutlineInputBorder(
//            borderRadius: BorderRadius.circular(10),
//            borderSide: BorderSide(
//                width: 0,
//                style: BorderStyle.none,
//            ),
//        ),
//        ),
//      ),
//    );
//
//    Container(
//      width: 296.w,
//      height: 48.h,
//      //margin: EdgeInsets.only(left: 32.w, top: topMargin),
//      child: TextFormField(
//        textAlignVertical: TextAlignVertical.center,
//        textAlign: TextAlign.left,
//        controller: controller,
//        onFieldSubmitted: onFieldSubmitted,
//        textInputAction: textInputAction,
//        focusNode: focusNode,
//        decoration: InputDecoration(
//          hintText: hintText,
//          hintStyle: TextStyle(
//            color: black,
//            fontSize: 14.sp,
//          ),
//          contentPadding: EdgeInsets.only(top: 16.h, bottom: 16.h, left: 12.w),
//          fillColor: greyTextField,
//          filled: true,
//          border: OutlineInputBorder(
//            borderRadius: BorderRadius.circular(10),
//            borderSide: BorderSide(
//              width: 0,
//              style: BorderStyle.none,
//            ),
//          ),
//        ),
//      ),
//    );

  }
}
