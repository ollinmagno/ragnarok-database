import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class SendFeedback extends StatefulWidget {
  @override
  _SendFeedbackState createState() => _SendFeedbackState();
}

class _SendFeedbackState extends State<SendFeedback> {
  final _keyForm = GlobalKey<FormState>();
  final TextEditingController _controllerTitle = TextEditingController();
  final TextEditingController _controllerSendFeedback = TextEditingController();

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
                    labelText: 'Title',
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
                  controller: _controllerSendFeedback,
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
      appBar: AppBar(
        title: Text('Feedback'),
        centerTitle: true,
        backgroundColor: primaryColor,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.send), onPressed: (){}),
        ],
      ),
      body: _body(),
    );
  }
}