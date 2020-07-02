import 'package:flutter/material.dart';

class ColumnCard extends StatelessWidget {
  final String img;
  final String text;
  const ColumnCard({Key key, this.text, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 112,
          width: 172,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(16.0)
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(img, height: 70),
                Text(text, style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
