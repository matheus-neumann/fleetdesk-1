import 'package:fleetdesk/app/controller/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/recovery_password/recovery_password_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_logo.dart';
import 'package:fleetdesk/app/ui/android/widgets/documents_container.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/menu_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/pop_up_occurrence.dart';
import 'package:fleetdesk/app/ui/android/widgets/top_bar_widget.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/controller/login/login_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocumentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      backgroundColor: splashColor,
      body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Stack(
          children: <Widget>[
            TopBarWidget(
              text: 'Documentos',
              backTo: Routes.TASKS_INFO,
            ),
            Container(
              margin: EdgeInsets.only(/*left: 80.w,*/ top: 84.h),
              child: Column(children: [
                Row(
                  children: [
                    SizedBox(width: 80.w),
                    InkWell(
                      child: Container(
                        height: 24.h,
                        width: 200.w,
                        child: Row(children: [
                          SvgPicture.asset('assets/images/barcode.svg'),
                          SizedBox(width: 12.w),
                          Text('Ler Código de Barra',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.sp))
                        ]),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Container(
                  height: 370.h,
                  width: 345.w,
                  child: Scrollbar(
                    //isAlwaysShown: true,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                          SizedBox(
                            height: 8.h,
                          ),
                          DocumentsContainer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              //height: 100.h,
              width: 360.w,
              margin: EdgeInsets.only(top: 490.h),
              child: Column(children: [
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  height: 48.h,
                  width: 328.w,
                  child: RaisedButton(
                    color: Colors.white,
                    child: Text(
                      'Concluir',
                      style: TextStyle(
                          color: red,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () => {print('teste')},
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Container(
                  height: 48.h,
                  width: 328.w,
                  child: RaisedButton(
                    color: splashColor,
                    child: Text(
                      'Informar Ocorrência',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: Colors.white,
                            width: 1,
                            style: BorderStyle.solid)),
                    onPressed: () {
                      showDialog(context: context, child: PopUpOccurrence());
                    },
                  ),
                ),
              ]),
            )
          ],
        ),
      ))),
    );
  }
}
