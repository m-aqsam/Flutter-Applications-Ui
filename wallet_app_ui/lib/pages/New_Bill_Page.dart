// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallet_app_ui/components/Bil_Payment_Page_components/All_Bill_Types_List.dart';
import 'package:wallet_app_ui/pages/Bill_Payment_Page.dart';

class New_Bill_Page extends StatefulWidget {
  const New_Bill_Page({super.key});

  @override
  State<New_Bill_Page> createState() => _New_Bill_PageState();
}

class _New_Bill_PageState extends State<New_Bill_Page> {
  void return_PreviousPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Bill_Payment_Page()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Column(
        children: [
          // Select Bill Type

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 8, right: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: return_PreviousPage,
                  child: Icon(
                    Icons.navigate_before_rounded,
                    size: 50,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          // Select Bill Type

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Select ",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Bill Type",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          // Bills Categories Type -> GridView

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: All_Bills_Type_List(),
          ),
        ],
      )),
    );
  }
}
