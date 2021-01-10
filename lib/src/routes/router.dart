import 'package:flutter/cupertino.dart';
import 'package:ragnarok/src/views/home_screen.dart';
import 'package:ragnarok/src/routes/routes.dart';
import 'package:ragnarok/src/views/select_card.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeScreen:
      return CupertinoPageRoute(builder: (context) => HomeScreen());
//    case equipmentPage:
//      return CupertinoPageRoute(builder: (context) => EquipmentPage());
    case selectCard:
      return CupertinoPageRoute(builder: (context) => SelectCard());
    default:
      return CupertinoPageRoute(builder: (context) => HomeScreen());
  }
}