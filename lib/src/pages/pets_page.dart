import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class PetsPage extends StatefulWidget {
  @override
  _PetsPageState createState() => _PetsPageState();
}

class _PetsPageState extends State<PetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pets'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
    );
  }
}
