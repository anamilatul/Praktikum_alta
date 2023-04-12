import 'package:flutter/material.dart';
import 'package:project_provider/contact_page.dart';
import 'package:project_provider/provider/contact_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ContactProvider>(
          create: (_) => ContactProvider(),
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
      debugShowCheckedModeBanner: false,
      title: 'Implement Provider_Contact',
      initialRoute: '/',
      routes: {
        '/': (context) => ContactPage(),
      },
    );
  }
}
