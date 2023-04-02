import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:phonebook_app/stores/contact.dart' as contact_store;

import 'home_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => contact_store.Contact(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phone Book App',
      home: HomePage(),
    );
  }
}
