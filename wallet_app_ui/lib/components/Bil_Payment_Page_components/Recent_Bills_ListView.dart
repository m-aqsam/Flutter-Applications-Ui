// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';

class Recent_Bills_ListView extends StatefulWidget {
  const Recent_Bills_ListView({super.key});

  @override
  State<Recent_Bills_ListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<Recent_Bills_ListView> {
  List<Map<String, dynamic>> _recent_Bills = [
    // male avatar   "lib/icons/man.png"
    // female avatar "lib/icons/woman.png"

    {"icon": "lib/icons/flame.png", "name": "SNGPL", "bill_id": "87148300004"},
    {
      "icon": "lib/icons/flash.png",
      "name": "MEPCO",
      "bill_id": "15154140963600"
    },
    {"icon": "lib/icons/phone-call.png", "name": "Telepohone", "bill_id": ""},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: _recent_Bills.length,
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
                    _recent_Bills[index]["name"].toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    _recent_Bills[index]["bill_id"].toString(),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  leading: Image.asset(
                    _recent_Bills[index]["icon"].toString(),
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
