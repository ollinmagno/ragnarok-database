import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class AppSettings extends StatelessWidget {
  _body() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
      body: _body(),
    );
  }
}
