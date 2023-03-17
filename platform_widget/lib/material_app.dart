import 'package:flutter/material.dart';
import './material_page.dart';

class App extends StatelessWidget {
  final _themeDart = ThemeData.dark();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _themeDart,
      home: HomePage(),
    );
  }
}
