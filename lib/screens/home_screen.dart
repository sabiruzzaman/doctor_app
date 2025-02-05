import 'package:doctor_app/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/best_doctor_grid_list_widget.dart';
import '../widget/department_list_widget.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});


  final List<Map<String, String>> _departments = [
    {
      "icon": "assets/virus.png",
      "name": "Pediatrician",
    },
    {
      "icon": "assets/virus.png",
      "name": "Cardiology",
    },
    {
      "icon": "assets/virus.png",
      "name": "Orthopedics",
    },
    {
      "icon": "assets/virus.png",
      "name": "Neurology",
    },
  ];
  final List<Map<String, String>> _departments_1 = [
    {
      "icon": "assets/virus.png",
      "name": "Pediatrician",
    },
    {
      "icon": "assets/virus.png",
      "name": "Cardiology",
    },
    {
      "icon": "assets/virus.png",
      "name": "Orthopedics",
    },
    {
      "icon": "assets/dot_menu.png",
      "name": "See More",
    },
  ];

  final List<Map<String, String>> _bestDoctors = [
    {
      "image": "assets/doctor_1.jpg",
      "name": "Bailey Dupont",
      "speciality": "Neurologist",
    },
    {
      "image": "assets/doctor_2.png",
      "name": "Donna Stroupe",
      "speciality": "Cosmetologist",
    },
    {
      "image": "assets/doctor_3.png",
      "name": "Juliana Silva",
      "speciality": "Pediatrician",
    },
    {
      "image": "assets/doctor_4.png",
      "name": "Connor Hamilton",
      "speciality": "Psychiatrist",
    },
  ];


  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final availableScreenWidth = screenWidth - 40;


    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const HeaderWidget(),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.location_pin, color: Color(0xFF1A3F4C)),
                      Text(
                        '123 Anywhere Street, Any City',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Color(0xFF1A3F4C),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(
                            top: 4, bottom: 4, left: 8, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(2),
                                    // Space for the border
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFF1A3F4C),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Image(
                                          image:
                                          AssetImage('assets/search.png'),
                                          height: 24,
                                          color: Colors.white),
                                    )),
                                const SizedBox(width: 16),
                                Text("Find your favourite doctor..",
                                    style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    )),
                              ],
                            ),
                            Container(
                                padding: const EdgeInsets.all(2),
                                // Space for the border
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Image(
                                      image: AssetImage('assets/menu.png'),
                                      height: 24,
                                      color: Color(0xFF1A3F4C)),
                                )),
                          ],
                        )),
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: const DecorationImage(
                            image: AssetImage('assets/banner.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                          left: 30,
                          top: 30,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your Health, Is',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Our Priority',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFB200),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                                  child: Text(
                                    'Get Started',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF1A3F4C),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(height: 10),
                  DepartmentListWidget(
                      departments: _departments, availableScreenWidth: availableScreenWidth),
                  DepartmentListWidget(
                      departments: _departments_1, availableScreenWidth: availableScreenWidth),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Best Doctor',
                        style: GoogleFonts.roboto(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1A3F4C),
                        ),
                      ),
                      Text(
                        'See More',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Color(0xFF6D7174),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: _bestDoctors.length,
                    itemBuilder: (context, index) {
                      return BestDoctorGridListWidget(
                        doctor: _bestDoctors[index],
                      );
                    },
                  ),

                  // _buildBestDoctorSection()
                ],
              ))
        ],
      ),
    );
  }
}
