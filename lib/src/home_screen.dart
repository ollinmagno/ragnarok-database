import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';
import 'package:ragnarok/src/widgets/column_card.dart';
import 'package:ragnarok/src/widgets/drawer_list.dart';
import 'package:ragnarok/src/widgets/search.dart';
//import 'dart:math' as math;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  _body() {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      height: double.infinity,
      color: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 26),
            Stack(
              children: <Widget>[
                IconButton(
                  iconSize: 32,
                  icon: Icon(Icons.format_list_bulleted),
                  color: Colors.grey.shade500,
                  onPressed: () => _scaffoldKey.currentState.openDrawer(),
                ),
                Positioned(
                  height: 260,
                  top: -55,
                  right: 20,
                  //child: Transform.rotate(angle: - math.pi + 3.6,
                  //child:
                  child:
                      Image.asset('assets/images/globe.png', color: Colors.green),
                ),
                Container(
                  padding: EdgeInsets.only(top: 70),
                  child: Text(
                    'What are you looking for ?',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Search(),
            SizedBox(
              height: 40.0,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ColumnCard(
                          img: 'assets/images/monster.png', text: 'Monsters', pageRoute: 'monsters',),
                      SizedBox(width: 12),
                      ColumnCard(
                        img: 'assets/images/poring.png',
                        text: 'Pets',
                        pageRoute: 'pets',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: <Widget>[
                      ColumnCard(img: 'assets/images/potion.png', text: 'Items', pageRoute: 'items',),
                      SizedBox(width: 12),
                      ColumnCard(img: 'assets/images/equipment.png', text: 'Equipment', pageRoute: 'equipment'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: <Widget>[
                      ColumnCard(img: 'assets/images/card-frog.png', text: 'Cards', pageRoute: 'letters'),
                      SizedBox(
                        width: 12,
                      ),
                      ColumnCard(img: 'assets/images/maps.png', text: 'Maps', pageRoute: 'maps'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      key: _scaffoldKey,
      drawer: DrawerList(),
    );
  }
}
