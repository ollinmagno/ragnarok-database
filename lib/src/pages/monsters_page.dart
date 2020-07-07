import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class MonstersPage extends StatefulWidget {
  @override
  _MonstersPageState createState() => _MonstersPageState();
}

class _MonstersPageState extends State<MonstersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: primaryColor,
      ),
    );
  }
}
