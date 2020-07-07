import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class SendReportBug extends StatefulWidget {
  @override
  _SendReportBugState createState() => _SendReportBugState();
}

class _SendReportBugState extends State<SendReportBug> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _keyForm = GlobalKey<FormState>();
  final TextEditingController _controllerTitle = TextEditingController();
  final TextEditingController _controllerSendReport = TextEditingController();

  _body() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 45, left: 16.0, right: 16.0, bottom: 16.0),
      child: Form(
        key: _keyForm,
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                width: 330,
                child: TextFormField(
                  controller: _controllerTitle,
                  maxLength: 30,
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                  //onChanged: (texto) {},
                  decoration: InputDecoration(
                    counterText: '',
                    labelText: 'Bug title',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  ),
                ),
              ),
              SizedBox(height: 60),
              SizedBox(
                width: 330,
                child: TextFormField(
                  controller: _controllerSendReport,
                  maxLength: 900,
                  keyboardType: TextInputType.text,
                  maxLines: 20,
                  //onChanged: (texto) {},
                  decoration: InputDecoration(
                    counterText: '',
                    labelText: '',
                    labelStyle: TextStyle(height: 0.0, color: Colors.red),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Report bug'),
        centerTitle: true,
        backgroundColor: primaryColor,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.send), onPressed: (){
            print('Enviando...');
          },),
        ],
      ),
      body: _body(),
    );
  }
}