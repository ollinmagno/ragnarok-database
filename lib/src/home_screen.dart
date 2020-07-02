import 'package:flutter/material.dart';
import 'package:ragnarok/src/pages/column_card.dart';
import 'package:ragnarok/src/widgets/search.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _body() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: ListView(
        padding: EdgeInsets.only(top: 80),
        children: <Widget>[
          Text(
            'What are you looking for ?',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16.0,
          ),
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
                    ColumnCard(img: 'assets/images/poring.png', text: 'Monsters'),
                    SizedBox(width: 16),
                    ColumnCard(img: 'assets/images/poring.png', text: 'Pets',),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    //ColumnCard(img: ''),
                    SizedBox(width: 16),
                    //ColumnCard(img: ''),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    //ColumnCard(img: ''),
                    SizedBox(width: 16,),
                    //ColumnCard(img: ''),
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
    );
  }
}
