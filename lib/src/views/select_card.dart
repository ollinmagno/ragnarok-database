import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class SelectCard extends StatefulWidget {
  @override
  _SelectCardState createState() => _SelectCardState();
}

class _SelectCardState extends State<SelectCard> {
  _gridBody(context) {
    return ListView(
      children: <Widget>[],
    );
  }

  _listBody(context) {
    return ListView(
      children: <Widget>[],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(''),
          centerTitle: true,
          backgroundColor: primaryColor,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Icon(Icons.grid_on, size: 18),
              ),
              Tab(
                child: Icon(Icons.format_list_bulleted, size: 18),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            _gridBody(context),
            _listBody(context),
          ],
        ),
      ),
    );
  }
}
