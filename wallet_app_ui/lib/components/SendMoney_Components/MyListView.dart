// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<Map<String, dynamic>> _allcontacts = [
    // male avatar   "lib/icons/man.png"
    // female avatar "lib/icons/woman.png"

    {
      "avatar": "lib/icons/woman.png",
      "name": "Zoey Bennett",
      "number": "+1 585 438 0264"
    },
    {
      "avatar": "lib/icons/man.png",
      "name": "Roy Jake",
      "number": "+1 678 233 9834"
    },
    {
      "avatar": "lib/icons/woman.png",
      "name": "Evan Cole",
      "number": "+1 730 655 7632"
    },
    {
      "avatar": "lib/icons/man.png",
      "name": "Liam Grant",
      "number": "+1 841 002 1134"
    },
    {
      "avatar": "lib/icons/man.png",
      "name": "Mia Parker",
      "number": "+1 678 885 2346"
    },
    {
      "avatar": "lib/icons/man.png",
      "name": "Jack Reid",
      "number": "+1 901 1378 3839"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: _allcontacts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),

            // Conatiner
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                //shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: Offset(1.0, 1.0),
                    blurRadius: 10.0,
                    spreadRadius: 0.5,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-1.0, -1.0),
                    blurRadius: 10.0,
                    spreadRadius: 0.5,
                  ),
                ],
              ),

              // ListTile
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ListTile(
                  title: Text(
                    _allcontacts[index]["name"].toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    _allcontacts[index]["number"].toString(),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  leading: Image.asset(
                    _allcontacts[index]["avatar"].toString(),
                    height: 60,
                  ),
                  trailing: Icon(
                    Icons.navigate_next_rounded,
                    size: 35,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
