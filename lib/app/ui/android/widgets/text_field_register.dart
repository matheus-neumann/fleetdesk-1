import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldRegister extends StatelessWidget {
  String hintText;
  TextInputAction textInputAction;
  FocusNode focusNode;

  TextFieldRegister({this.hintText, this.textInputAction, this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296.w,
      height: 48.h,
      margin: EdgeInsets.only(left: 32.w, top: 208.h),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.left,
        onFieldSubmitted: (value) {},
        textInputAction: textInputAction,
        focusNode: focusNode,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: black,
            fontSize: 14.sp,
          ),
          contentPadding: EdgeInsets.only(bottom: 16.h, left: 12.w),
          fillColor: greyTextField,
          filled: true,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
