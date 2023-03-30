import 'package:flutter/material.dart';
import 'package:flutter_navigation/about_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      initialRoute: '/',
      routes: {
        '/': (_) => HomeScreen(),
        '/about': (_) => AboutScreen(),
      },
    );
  }
}
