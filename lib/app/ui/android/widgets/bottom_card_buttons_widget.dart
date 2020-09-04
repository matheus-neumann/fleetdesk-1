//import 'package:fleetdesk/app/controller/create_account/controller.dart';
//import 'package:fleetdesk/app/controller/login/login_controller.dart';
//import 'package:fleetdesk/app/ui/android/widgets/button_widget.dart';
//import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//
//class CardBottomButtonsWidget extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      children: <Widget>[
//        GetX<Controller>(
//          builder: (_) {
//            return RaisedButtonCustomWidget(
//              icon: Icons.delete_outline,
//              onPressed: _.delete(_.post.id),
//              text: 'Delete',
//            );
//          },
//        ),
//        GetX<Controller>(
//          builder: (_) {
//            return RaisedButtonCustomWidget(
//              icon: Icons.edit,
//              onPressed: _.editar(_.post),
//              text: 'Editar',
//            );
//          },
//        )
//      ],
//    );
//  }
//}
