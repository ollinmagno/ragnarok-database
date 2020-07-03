import 'package:flutter/material.dart';
import 'package:ragnarok/src/routes/routes.dart';

class ColumnCard extends StatelessWidget {
  final String img;
  final String text;
  final String pageRoute;

  const ColumnCard({Key key, this.text, this.img, this.pageRoute}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () async {
            final result = await Navigator.pushNamed(context, pageRoute);
            print("Container clicked");
          },
          child: Container(
            height: 112,
            width: 172,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(16.0)),
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