import 'package:flutter/material.dart';
import 'package:ragnarok/src/pages/column_card.dart';
import 'package:ragnarok/src/widgets/drawer_list.dart';
import 'package:ragnarok/src/widgets/search.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'dart:math' as math;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _body() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                iconSize: 32,
                icon: Icon(Icons.format_list_bulleted),
                color: Colors.grey.shade500,
                onPressed: (){},
                //onPressed: () => Scaffold.of(context).openDrawer(),
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
                        img: 'assets/images/monster.png', text: 'Monsters'),
                    SizedBox(width: 16),
                    ColumnCard(
                      img: 'assets/images/poring.png',
                      text: 'Pets',
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    ColumnCard(img: 'assets/images/potion.png', text: 'Items'),
                    SizedBox(width: 16),
                    ColumnCard(img: 'assets/images/equipment.png', text: 'Equipment'),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    ColumnCard(img: 'assets/images/card-frog.png', text: 'Cards'),
                    SizedBox(
                      width: 16,
                    ),
                    ColumnCard(img: 'assets/images/maps.png', text: 'Maps',),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      drawer: DrawerList(),
    );
  }
}
