import 'package:flutter/material.dart';

import 'state_management.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter State Management',
      home: StateManagement(),
    );
  }
}
