import 'package:fleetdesk/app/ui/android/widgets/container_ranking.dart';
import 'package:fleetdesk/app/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RankingPage extends StatelessWidget {
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
        child: Column(
          children: <Widget>[
            Container(
                height: 280.h,
                width: 360.w,
                decoration: BoxDecoration(
                    color: appBarColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)))),
            SizedBox(
              height: 19.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 11.w,
                ),
                ContainerRanking(
                  text: 'Frenagem',
                ),
                SizedBox(
                  width: 8.w,
                ),
                ContainerRanking(
                  text: 'Aceleração',
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 11.w,
                ),
                ContainerRanking(
                  text: 'Curva brusca',
                ),
                SizedBox(
                  width: 8.w,
                ),
                ContainerRanking(
                  text: 'Uso de celular',
                ),
              ],
            ),
          ],
        ),
      ))),
      bottomNavigationBar: Container(
        height: 64.h,
        width: 360.w,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: BottomNavigationBar(
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              title: new Text('Messages'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile')),
          ],
        ),
      ),
    );
  }
}
