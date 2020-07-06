import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class SendFeedback extends StatelessWidget {
  _body(){
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(

            ),
            SizedBox(height: 16),
            TextFormField(),
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
        backgroundColor: appBarColor,
      ),
      body: _body(),
    );
  }
}
