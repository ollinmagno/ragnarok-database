import 'package:flutter/material.dart';
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
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case equipmentPage:
      return MaterialPageRoute(builder: (context) => EquipmentPage());
    case itemsPage:
      return MaterialPageRoute(builder: (context) => ItemsPage());
    case mapsPage:
      return MaterialPageRoute(builder: (context) => MapsPage());
    case monsterPage:
      return MaterialPageRoute(builder: (context) => MonstersPage());
    case pageOfLetters:
      return MaterialPageRoute(builder: (context) => PageOfLetters());
    case petsPage:
      return MaterialPageRoute(builder: (context) => PetsPage());
      break;
    default:
      return MaterialPageRoute(builder: (context) => HomeScreen());
  }
}