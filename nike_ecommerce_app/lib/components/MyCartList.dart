// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCartList extends StatefulWidget {
  const MyCartList({super.key});

  @override
  State<MyCartList> createState() => _MyCartListState();
}

class _MyCartListState extends State<MyCartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Container(
            height: 90,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: ListTile(
                leading: Container(
                  // color: Colors.grey[300],
                  child: Image.asset("lib/images/introimage4.png"),
                ),

                // tittle

                title: Text(
                  "Shoe Name",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "\$206",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: 5,
    );
  }
}
