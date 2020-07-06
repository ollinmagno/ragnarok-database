import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class SendReportBug extends StatelessWidget {
  GlobalKey _keyForm = GlobalKey<FormState>();
  final TextEditingController _controllerTitle = TextEditingController();
  final TextEditingController _controllerSendReport = TextEditingController();

  _body() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report bug'),
        centerTitle: true,
        backgroundColor: appBarColor,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.send), onPressed: (){},),
        ],
      ),
      body: _body(),
    );
  }
}
