import 'package:flutter/material.dart';
import 'discovery/login_screen.dart';
import 'home/home_screen.dart';
import 'home/informations_items.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}
