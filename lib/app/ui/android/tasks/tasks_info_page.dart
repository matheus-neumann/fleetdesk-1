import 'package:dotted_border/dotted_border.dart';
import 'package:fleetdesk/app/controller/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:fleetdesk/app/routes/app_pages.dart';
import 'package:fleetdesk/app/ui/android/recovery_password/recovery_password_page.dart';
import 'package:fleetdesk/app/ui/android/widgets/button_widget.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_form.dart';
import 'package:fleetdesk/app/ui/android/widgets/container_logo.dart';
import 'package:fleetdesk/app/ui/android/widgets/login_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/menu_button.dart';
import 'package:fleetdesk/app/ui/android/widgets/tasks_widgets.dart';
import 'package:fleetdesk/app/ui/android/widgets/top_bar_widget.dart';
import 'package:fleetdesk/app/ui/android/widgets/top_card_widget.dart';
import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/controller/login/login_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasksInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
        backgroundColor: splashColor,
        body: SingleChildScrollView(
            child: SafeArea(
                child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Column(children: [
                      TopBarWidget(
                        text: 'Detalhes',
                        backTo: Routes.TASKS,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        height: 41.h,
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
                              width: 16.w,
                            ),
                            Container(
                              child: Text(
                                'Rodrigo Albuquerque',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5.sp),
                              ),
                            ),
                            SizedBox(
                              width: 92.w,
                            ),
                            Container(
                              height: 25.h,
                              width: 25.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.grey, width: 2.w),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(2),
                                child:
                                    Icon(Icons.phone, color: red, size: 15.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        height: 257.h,
                        width: 328.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1D2634),
                          borderRadius: BorderRadius.circular(
                              20), // TODO - Verify radius of Container Fields
                        ),
                        child: Column(children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 15.w,
                                //height: 10.h,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12.h),
                                child: Icon(
                                  Icons.local_shipping,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12.h),
                                child: Text(
                                  'Entrega',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 150.w,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12.h),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                      text: 'Status\n',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'Ativa',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Colors.white)),
                                      ]),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 8.w),
                              alignment: Alignment.centerLeft,
                              child: CustomPaint(
                                painter: LineDashedPainter(),
                              )),
                          SizedBox(
                            height: 9.h,
                          ),
                          Row(children: [
                            Container(
                              height: 15.h,
                              width: 15.w,
                              margin: EdgeInsets.only(left: 16.w, bottom: 32.h),
                              decoration: BoxDecoration(
                                color: Color(0xff33B62025),
                                shape: BoxShape.circle,
                                //border: Border.all(color: Colors.grey, width: 3.w),
                              ),
                              child: Container(
                                margin: EdgeInsets.all(4.w),
                                height: 9.h,
                                width: 9.w,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: red, width: 2.w),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              //margin: EdgeInsets.only(top: 19.h),
                              child: RichText(
                                text: TextSpan(
                                    text: 'Endereço\n',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'Rua Frederico Otávio Barbosa, 528,\nAP202, Porto Alegre/RS',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Colors.white)),
                                    ]),
                              ),
                            ),
                            SizedBox(
                              width: 67.5.w,
                            ),
                          ]),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 8.w),
                              alignment: Alignment.centerLeft,
                              child: CustomPaint(
                                painter: LineDashedPainter(),
                              )),
                          SizedBox(
                            height: 11.h,
                          ),
                          Row(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.only(left: 16.w, bottom: 16.h),
                                child: Icon(
                                  Icons.today,
                                  color: red,
                                  size: 16.sp,
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'Janela de atendimento do cliente\n',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '20/02/20  (entre às 10:30 e 18:30)',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Colors.white)),
                                    ]),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 8.w),
                              alignment: Alignment.centerLeft,
                              child: CustomPaint(
                                painter: LineDashedPainter(),
                              )),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.only(left: 16.w, bottom: 47.h),
                                child: Icon(
                                  Icons.info,
                                  color: red,
                                  size: 16.sp,
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'Observação\n',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'Se for entregar depois das 12h, deixar\nencomenda com o porteiro.\nO pagamento já foi acertado.',
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Colors.white,
                                              letterSpacing: 0.3.sp)),
                                    ]),
                              ),
                            ],
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                          height: 57.h,
                          width: 328.w,
                          //margin: EdgeInsets.only(left: 16.w),
                          decoration: BoxDecoration(
                            color: Color(0xff1D2634),
                            borderRadius: BorderRadius.circular(
                                20), // TODO - Verify radius of Container Fields
                          ),
                          child: Row(children: [
                            SizedBox(
                              width: 13.w,
                            ),
                            Container(
                              height: 25.h,
                              width: 25.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                padding: EdgeInsets.all(2),
                                child: Icon(Icons.assignment,
                                    color: black, size: 15.sp),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.DOCUMENTS);
                              },
                              child: Container(
                                child: Text(
                                  'Selecionar Documento',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 83.w,
                            ),
                            Container(
                              child: InkWell(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 16.sp,
                                ),
                              ),
                            ),
                          ])),
                      SizedBox(
                        height: 13.h,
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
                        height: 13.h,
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
                          onPressed: () => {print('teste')},
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Container(
                          child: FlatButton(
                        child: Text(
                          'Desfazer',
                          // TODO - Adjust font size, font weight and configure to navigate for 'Recovery Password' page
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                      ))
                    ])))));
  }
}
