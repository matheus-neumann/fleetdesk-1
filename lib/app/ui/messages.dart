import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'android/widgets/navigation_bottom_bar.dart';

class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        currentIndex: 1,
      ),
      backgroundColor: splashColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              children: [
                SizedBox(
                  height: 21.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Row(
                    children: [
                      InkWell(
                          child: Container(
                              width: 10.w,
                              child: Icon(Icons.arrow_back_ios,
                                  color: Color(0xffffffff))),
                          onTap: () {
                            Get.toNamed(Routes.MENU);
                          }),
                      SizedBox(
                        width: 107.w,
                      ),
                      Text(
                        'Mensagens',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            color: Colors.white,
                            letterSpacing: 0.3.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(left: 38.w),
                  width: 312.w,
                  height: 137.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.sp),
                        topLeft: Radius.circular(20.sp),
                        bottomLeft: Radius.circular(20.sp),
                      )),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10.w, top: 10.h),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/profile_icon_example.svg', color: black,),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text('Carlos Amaral', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10.w),
                        child: Text("Lorem ipsum dolor sit amet,\nconsectetuer adipiscing elit enean\ncommodo ligula eget dolor.\nAenean massa.",
                        style: TextStyle(fontSize: 16.sp),),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 300.w,
                    ),
                    Text(
                      '20:29',
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 12.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 312.w,
                  height: 137.h,
                  margin: EdgeInsets.only(right: 16.w),
                  decoration: BoxDecoration(
                      color: red,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.sp),
                        topLeft: Radius.circular(20.sp),
                        bottomRight: Radius.circular(20.sp),
                      )),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10.w, top: 10.h),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/profile_icon_example.svg', color: Colors.white,),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text('Central de Operacional', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.white),)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10.w),
                        child: Text("Lorem ipsum dolor sit amet,\nconsectetuer adipiscing elit enean\ncommodo ligula eget dolor.\nAenean massa.",
                          style: TextStyle(fontSize: 16.sp, color: Colors.white),),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      '20:29',
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Stack(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 12.sp,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 7.w),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 91.h),
                      width: 360.w,
                      height: 96.h,
                      decoration: BoxDecoration(
                          color: Color(0XFF1D2634),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.sp),
                              topLeft: Radius.circular(20.sp))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 12.w,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 22.h),
                            width: 256.w,
                            height: 40.h,
                            child: TextField(

                                decoration: InputDecoration(
                                  hintText: 'Escreva sua mensagem',
                                  hintStyle: TextStyle(
                                  color: Color(0xff201F1F),
                                  ),
                                  contentPadding: EdgeInsets.only(left: 12.w, bottom: 12.h, top: 12.h),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.sp),
                                    borderSide: BorderSide.none,
                                  ),
                                  //disabledBorder: BorderSide.none,
                                  filled: true,
                                  fillColor: Color(0XFFF2F2F2),
                                ),
                              ),
                            ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 22.h),
                            child: InkWell(onTap: null,child: SvgPicture.asset('assets/images/camera_icon.svg')),),
                          SizedBox(
                            width: 16.w,
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 22.h),
                              child: InkWell(onTap: null, child: SvgPicture.asset('assets/images/mic_icon.svg')),),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
