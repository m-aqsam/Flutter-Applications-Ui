// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<Map<String, dynamic>> _allcontacts = [
    {"id": 1, "name": "Andy", "age": 20},
    {"id": 2, "name": "Clark", "age": 20},
    {"id": 3, "name": "John", "age": 20},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: _allcontacts.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  //shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: ListTile(
                  title: Text(_allcontacts[index]["name"].toString()),
                  subtitle: Text("12345678"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
