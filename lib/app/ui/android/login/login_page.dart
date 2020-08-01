import 'package:fleetdesk/app/ui/theme/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fleetdesk/app/controller/login/login_controller.dart';
import 'package:fleetdesk/app/controller/splash/splash_controller.dart';
import 'package:fleetdesk/app/ui/android/widgets/bottom_card_widget.dart';
import 'package:fleetdesk/app/ui/android/widgets/top_card_widget.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends GetView<LoginController> {

  bool obscureText = true;

//  void _toggle() {
//    setState(() {
//      obscureText = !obscureText;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 640, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
      body: Stack(
        children: <Widget>[
          Container(
            child: Container(
              width: 224.w,
              height: 50.h,
              margin: EdgeInsets.only(
                  top: 134.h, left: 68.w, bottom: 149.h, right: 68.w),
              child: Image.asset(AppAssets.fleetdeskLogo),
            ),
            width: 360.w,
            height: 333.h,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1182),
                    spreadRadius: 74,
                    blurRadius: 74,
                    offset: Offset(0.w, 42.h), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius
                    .only( // TODO - Verify radius of Container Logo
                    bottomLeft: Radius.elliptical(200, 15),
                    bottomRight: Radius.elliptical(200, 15)),
                gradient: LinearGradient( // TODO - Verify gradient colors
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(14, 24, 40, 1),
                    Color.fromRGBO(9, 14, 25, 1)
                  ],
                  // tileMode: TileMode.repeated,
                )
            ),
          ),
          Container(
            width: 328.w,
            height: 320.h,
            margin: EdgeInsets.only(top: 225.h, right: 16.w, left: 16.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  15), // TODO - Verify radius of Container Fields
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 249.h, bottom: 375.h, right: 187.w, left: 32.w),
            child: FittedBox(
              child: Text(
                'Realize seu login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  color: Color.fromRGBO(182, 32, 37, 1),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 289.h, bottom: 335.h, right: 252.w, left: 32.w),
            child: Text(
              'Seu e-mail',
              style: TextStyle(
                fontSize: 14.sp,
                color: Color.fromRGBO(32, 32, 31, 1),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 309.h, bottom: 283.h, right: 32.w, left: 32.w),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Informe seu e-mail',
                  // TODO - Adjust font size and font weight
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Color.fromRGBO(32, 32, 31, 0.94),
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(242, 242, 242, 1),
                      )
                  )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 365.h, bottom: 259.h, right: 283.w, left: 32.w),
            child: Text(
              'Senha',
              style: TextStyle(
                fontSize: 14.sp,
                color: Color.fromRGBO(32, 32, 31, 1),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 385.h, bottom: 207.h, right: 32.w, left: 32.w),
            child: TextFormField(
              obscureText: obscureText,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  hintText: 'Informe sua senha',
                  // TODO - Adjust font size and font weight
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Color.fromRGBO(32, 32, 31, 0.94),
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(242, 242, 242, 1),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(242, 242, 242, 1),
                      )
                  )
              ),
            ),
          ),
          Container(
            height: 16.h,
            width: 16.w,
            margin: EdgeInsets.only(
                top: 441.h, bottom: 183.h, right: 312.w, left: 32.w),
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Checkbox( // TODO - Adjust radius of CheckBox Password
              value: false,
//                onChanged: (newValue) {
//                  setState(() {
//                   checkedValue = newValue;
//                });
//              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 441.h, bottom: 183.h, right: 228.w, left: 56.w),
            child: Text(
              'Salvar senha', // TODO - Adjust font size and font weight
              style: TextStyle(
                fontSize: 12.sp,
                color: Color.fromRGBO(32, 32, 31, 1),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 441.h, bottom: 183.h, right: 32.w, left: 225.w),
            child: Text(
              'Recuperar senha',
              // TODO - Adjust font size, font weight and configure to navigate for 'Recovery Password' page
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 12.sp,
                color: Color.fromRGBO(32, 32, 31, 1),
              ),
            ),
          ),
          Container(
            height: 48.h,
            width: 296.w,
            margin: EdgeInsets.only(
                top: 481.h, bottom: 111.h, right: 32.w, left: 32.w),
            child: RaisedButton(
              color: Color.fromRGBO(182, 32, 37, 1),
              child: Text(
                'Entrar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () => print("Button Pressed"),
            ),
          ),
          Container(
            width: 44.w,
            height: 44.h,
            //margin: EdgeInsets.only(top: 397.h, bottom: 219.h, right: 44.w, left: 292.w),
            child: IconButton(
              padding: EdgeInsets.only(top: 397.h, bottom: 219.h, right: 44.w, left: 292.w),
                icon: Icon(
                  Icons.remove_red_eye,
                  color: this.obscureText ? Colors.grey : Colors.blue,
                ),
                onPressed: () => this.obscureText = !this.obscureText),
          ),
        ],
      ),
    );
  }
}