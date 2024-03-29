import 'package:flutter/material.dart';
import 'material_page.dart';
import 'gridview.dart';

//for cupertinoApp
// import 'package:flutter/cupertino.dart';
// import 'cupertino_page.dart';

//for explorasi
// import 'explorasi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: IconWidget(),
    );
  }

  //buat cupertinoApp
  // @override
  // Widget build(BuildContext context) {
  //   return const CupertinoApp(
  //     debugShowCheckedModeBanner: false,
  //     home: IosDesign(),
  //   );
  // }
}
