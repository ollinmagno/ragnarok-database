import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class ItemsPage extends StatefulWidget {
  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Items'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
    );
  }
}
