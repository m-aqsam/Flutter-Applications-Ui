// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medical_app_ui/components/Doctor_Card.dart';
import 'package:medical_app_ui/components/Medical_List.dart';
import 'package:medical_app_ui/components/MyButton.dart';
import 'package:medical_app_ui/components/MyTextField.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Column(
            // App bar
            children: [
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Hello

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        // Name Text
                        Text(
                          "Muhammad Aqsam",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.person,
                        size: 40,
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 25),

              // Card

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Image

                        Image.asset(
                          'lib/images/profile1.png',
                          height: 135,
                        ),

                        // Container(
                        //   height: 120,
                        //   width: 110,
                        //   // color: Colors.deepPurple[300],

                        //   child: Image.asset(
                        //     'lib/images/profile2.png',
                        //   ),
                        // ),

                        // Text
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 22),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'How do you fell ?',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Find out your medical \ncard right now',
                              ),

                              SizedBox(height: 12),

                              // Get Started Button

                              Container(
                                height: 40,
                                width: 190,
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple[300],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25),

              //Search Bar

              MyTextField(
                controller: controller,
                hintText: 'How can we help you?',
                obscureText: false,
              ),

              SizedBox(height: 25),

              //Category ListView

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // Dentist
                      Medical_List(
                        image: 'lib/images/tooth.png',
                        listName: 'Dentist',
                      ),
                      SizedBox(width: 15),

                      // Doctor
                      Medical_List(
                        image: 'lib/images/stethoscope.png',
                        listName: 'Doctor',
                      ),
                      SizedBox(width: 15),

                      // Surgeon
                      Medical_List(
                        image: 'lib/images/knife.png',
                        listName: 'Surgeon',
                      ),
                      SizedBox(width: 15),

                      // Dietitian
                      Medical_List(
                        image: 'lib/images/laptop.png',
                        listName: 'Dietitian',
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Doctors List',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              // Doctors List

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 200,
                  //color: Colors.deepPurple[100],
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // Card 1
                      Doctor_Card(
                        image: 'lib/images/doctor4.jpg',
                        rating: 4.8,
                        doctorName: 'Dr.Arleney McCoy',
                        speciality: 'Therapist',
                        years: 5,
                      ),
                      SizedBox(width: 20),

                      // Card 2
                      Doctor_Card(
                        image: 'lib/images/doctor3.jpg',
                        rating: 4.6,
                        doctorName: 'Dr.Elizabeth Well',
                        speciality: 'Therapist',
                        years: 7,
                      ),
                      SizedBox(width: 20),

                      // Card 3
                      Doctor_Card(
                        image: 'lib/images/doctor2.jpg',
                        rating: 5.0,
                        doctorName: 'Dr.Albert Flores',
                        speciality: 'Therapist',
                        years: 4,
                      ),
                      SizedBox(width: 20),

                      // Card 4
                      Doctor_Card(
                        image: 'lib/images/doctor1.jpg',
                        rating: 4.7,
                        doctorName: 'Dr.Helen Brooke',
                        speciality: 'Therapist',
                        years: 3,
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 28),
              // Bottom Nav Bar

              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.message), label: 'Inbox'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.notifications), label: 'Notification'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.calendar_month_rounded),
                      label: 'Appointment'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
