import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSheet extends StatelessWidget {
  const ProfileSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile_pict.jpg'),
          ),
          // Container(
          //   height: 100,
          //   width: 100,
          //   decoration: const BoxDecoration(
          //     color: Colors.blue,
          //     shape: BoxShape.circle,
          //   ),
          // ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Michele',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Task Complited',
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                      ),
                    ),
                    const Icon(Icons.chevron_right_rounded),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Goals',
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                      ),
                    ),
                    const Icon(Icons.chevron_right_rounded),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Setting',
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                      ),
                    ),
                    const Icon(Icons.chevron_right_rounded),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Logout',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
