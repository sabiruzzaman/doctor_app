import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DepartmentListWidget extends StatelessWidget {

 final List<Map<String, String>> departments;
 final double availableScreenWidth;

  const DepartmentListWidget({super.key, required this.departments, required this.availableScreenWidth});


  @override
  Widget build(BuildContext context) {

    final itemWidth = availableScreenWidth / 4 - 8;

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: departments.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4),
            child: Container(
              width: itemWidth, // More adaptive width
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFFC4CCD3),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    departments[index]["icon"]!,
                    height: 30,
                    color: const Color(
                        0xFF1A3F4C),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    departments[index]["name"]!,
                    textAlign: TextAlign.center,
                    style:  GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF1A3F4C),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
