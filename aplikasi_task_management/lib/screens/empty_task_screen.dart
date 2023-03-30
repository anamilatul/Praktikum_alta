import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyTaskScreen extends StatelessWidget {
  const EmptyTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/empty_bg.png'),
            height: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Task Masih Kosong',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 58, 71, 93),
            ),
          )
        ],
      ),
    );
  }
}
