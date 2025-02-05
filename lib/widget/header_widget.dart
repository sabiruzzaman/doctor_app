import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(2), // Space for the border
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: const Color(0xFF1A3F4C), width: 2),
                  ),
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back!',
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1A3F4C),
                      ),
                    ),
                    Text(
                      "Jonathon Patterson",
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: const Color(0xFF1A3F4C),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
                padding: const EdgeInsets.all(2), // Space for the border
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF1A3F4C),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage('assets/dot_menu.png'),
                    height: 20,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
