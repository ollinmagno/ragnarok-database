import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class ColumnCard extends StatelessWidget {
  final String img;
  final String text;
  final String pageRoute;

  const ColumnCard({Key key, this.text, this.img, this.pageRoute}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () async {
            print("Container clicked");
            Navigator.pushNamed(context, pageRoute);
          },
          child: Container(
            height: 112,
            width: 172,
            decoration: BoxDecoration(
                color: Colors.lightGreen,
              //color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2.25,
                    blurRadius: 2.25,
                    offset: Offset(0, 3.5),
                  ),
                ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(img, height: 70),
                Text(
                  text,
                  style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
