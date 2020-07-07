import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maps'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
    );
  }
}
