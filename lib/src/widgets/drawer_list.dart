import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ragnarok/src/pages_drawer/about.dart';
import 'package:ragnarok/src/pages_drawer/app_settings.dart';
import 'package:ragnarok/src/pages_drawer/send_feedback.dart';
import 'package:ragnarok/src/pages_drawer/send_report_bug.dart';
import 'package:ragnarok/src/utils/colors.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 240,
            color: appBarColor,
            padding: EdgeInsets.all(16.0),
          ),
          SizedBox(height: 16),
          ListTile(
            title: Text('About', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => About())),
          ),
          ListTile(
            title: Text('Recent', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),),
            trailing: Icon(Icons.access_time, color: Colors.grey.shade600, size: 20),
            //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => About())),
          ),
          ListTile(
            title: Text('Favorites', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),),
            trailing: Icon(Icons.favorite, color: Colors.blueAccent, size: 22),
            //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => About())),
          ),
          ListTile(
            title: Text('Settings', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),),
            trailing: Icon(Icons.build, color: Colors.grey.shade600, size: 20),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AppSettings())),
          ),
          Divider(height: 16, color: Colors.grey.shade600),
          ListTile(
            title: Text('Send feedback', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SendFeedback())),
          ),
          ListTile(
            title: Text('Report Bug', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),),
            trailing: Icon(Icons.bug_report, size: 26),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SendReportBug())),
          ),
        ],
      ),
    );
  }
}
