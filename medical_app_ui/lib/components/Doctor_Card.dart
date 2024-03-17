// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Doctor_Card extends StatelessWidget {
  final String image;
  final double rating;
  final String doctorName;
  final String speciality;
  final int years;
  const Doctor_Card({
    super.key,
    required this.image,
    required this.rating,
    required this.doctorName,
    required this.speciality,
    required this.years,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        // border: Border.all(color: Colors.deepPurple[300]!),
        color: Color.fromARGB(255, 216, 203, 237),
      ),
      height: 200,
      width: 170,
      child: Column(
        children: [
          SizedBox(height: 15),

          // Profile image

          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 35,
          ),

          SizedBox(height: 8),

          // Rating

          Container(
            width: 65,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                SizedBox(width: 5),
                Text(
                  rating.toString(),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // Doctor Name

          Text(
            doctorName,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          // Experience

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                speciality,
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(width: 6),
              Text(
                ",",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              Text(
                years.toString(),
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              Text(
                " y.e",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
