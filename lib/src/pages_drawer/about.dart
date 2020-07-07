import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class About extends StatelessWidget {
  _body() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Developer', style:
              TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w500)),
              contentPadding: EdgeInsets.all(8),
              subtitle: Text('Ollin Magno', style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            ListTile(
              title: Text('App version', style:
              TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w500)),
              contentPadding: EdgeInsets.all(8),
              subtitle: Text('1.0.0', style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            ListTile(
              title: Text('Open source libraries', style:
              TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w500)),
              contentPadding: EdgeInsets.all(8),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: _body(),
    );
  }
}


