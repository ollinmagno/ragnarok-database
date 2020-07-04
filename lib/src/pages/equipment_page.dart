import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class EquipmentPage extends StatefulWidget {
  @override
  _EquipmentPageState createState() => _EquipmentPageState();
}

class _EquipmentPageState extends State<EquipmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Equipments'),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
    );
  }
}
