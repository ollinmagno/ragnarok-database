import 'package:flutter/cupertino.dart';
import 'package:ragnarok/src/home_screen.dart';
import 'package:ragnarok/src/pages/equipment_page.dart';
import 'package:ragnarok/src/pages/items_page.dart';
import 'package:ragnarok/src/pages/maps_page.dart';
import 'package:ragnarok/src/pages/monsters_page.dart';
import 'package:ragnarok/src/pages/page_of_letters.dart';
import 'package:ragnarok/src/pages/pets_page.dart';
import 'package:ragnarok/src/routes/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeScreen:
      return CupertinoPageRoute(builder: (context) => HomeScreen());
    case equipmentPage:
      return CupertinoPageRoute(builder: (context) => EquipmentPage());
    case itemsPage:
      return CupertinoPageRoute(builder: (context) => ItemsPage());
    case mapsPage:
      return CupertinoPageRoute(builder: (context) => MapsPage());
    case monsterPage:
      return CupertinoPageRoute(builder: (context) => MonstersPage());
    case pageOfLetters:
      return CupertinoPageRoute(builder: (context) => PageOfLetters());
    case petsPage:
      return CupertinoPageRoute(builder: (context) => PetsPage());
      break;
    default:
      return CupertinoPageRoute(builder: (context) => HomeScreen());
  }
}