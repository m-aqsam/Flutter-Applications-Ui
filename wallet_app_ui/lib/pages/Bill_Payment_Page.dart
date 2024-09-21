// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wallet_app_ui/components/Bil_Payment_Page_components/Enter_Bill_Container.dart';
import 'package:wallet_app_ui/components/Bil_Payment_Page_components/Recent_Bills_ListView.dart';
import 'package:wallet_app_ui/components/SendMoney_Components/MyListView.dart';
import 'package:wallet_app_ui/pages/Home_Page.dart';

class Bill_Payment_Page extends StatefulWidget {
  const Bill_Payment_Page({super.key});

  @override
  State<Bill_Payment_Page> createState() => _Bill_Payment_PageState();
}

class _Bill_Payment_PageState extends State<Bill_Payment_Page> {
  void return_PreviousPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home_Page()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Column(
        children: [
          // Back Icon
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

          // Pay Bill Text

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Pay ",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Your Bills",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          // Enter a New Bill Container.

          Enter_Bill_Container(),

          SizedBox(height: 20),

          // Recent Bill Text

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Recent ",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Bills",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),

          // ListView

          Expanded(
            child: Container(
              child: Recent_Bills_ListView(),
            ),
          ),
        ],
      )),
    );
  }
}
