import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestDoctorGridListWidget extends StatelessWidget {
  final Map<String, String> doctor;

  const BestDoctorGridListWidget({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: AssetImage(doctor["image"]!),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              height: 60,
              width: 180,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(24),
                ),
                color: Color(0xFF1A3F4C),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor['name']!,
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      doctor['speciality']!,
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
