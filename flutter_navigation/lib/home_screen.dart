import 'package:flutter/material.dart';
// import 'package:flutter_navigation/about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed('/about', arguments: 'Data dari homeScreen');

            //gapake route
            // MaterialPageRoute(
            //   builder: (_) => AboutScreen(
            //     parameter: 'Hai',
            //   ),
            // ),
          },
          child: Text('Go to About Page'),
        ),
      ),
    );
  }
}
