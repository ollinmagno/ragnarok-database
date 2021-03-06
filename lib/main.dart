import 'package:flutter/material.dart';
import 'package:ragnarok/src/home_screen.dart';
import 'package:ragnarok/src/routes/router.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ragnarok database',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomeScreen(),
      onGenerateRoute: router.generateRoute,
    );
  }
}
