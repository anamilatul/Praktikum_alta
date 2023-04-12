import 'package:flutter/material.dart';
import 'package:flutter_animation/about_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isBig = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isBig = !isBig;
                });
              },
              child: const Text('Rezise'),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: isBig ? 200 : 100,
              height: isBig ? 200 : 100,
              color: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            AnimatedContainer(
              width: isBig ? 200 : 100,
              height: isBig ? 200 : 100,
              color: Colors.red,
              duration: Duration(milliseconds: 300),
            ),
            const SizedBox(
              height: 10,
            ),
            //Transition
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimatoin) {
                      return AboutScreen();
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      // final tween = Tween(
                      //   begin: const Offset(0,.5),
                      //   end: Offset.zero,
                      // );
                      // return SlideTransition(
                      //   position: animation.drive(tween),
                      //   child: child,
                      // );

                      // //Transition Umum (FadeTransition)
                      // final tween = Tween(begin: 0.0, end: 1.0);
                      // return FadeTransition(
                      //   opacity: animation.drive(tween),
                      //   child: child,
                      // );

                      //ScaleTransition
                      final tween = Tween(begin: 0.0, end: 1.0);
                      return ScaleTransition(
                        scale: animation.drive(tween),
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: Text('Go to about Page'),
            ),
          ],
        ),
      ),
    );
  }
}
