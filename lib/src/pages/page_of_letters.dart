import 'package:flutter/material.dart';
import 'package:ragnarok/src/utils/colors.dart';

class PageOfLetters extends StatefulWidget {
  @override
  _PageOfLettersState createState() => _PageOfLettersState();
}

class _PageOfLettersState extends State<PageOfLetters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
    );
  }
}
