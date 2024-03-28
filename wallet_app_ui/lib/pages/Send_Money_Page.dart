// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';

import 'package:wallet_app_ui/components/SendMoney_Components/Search_Card.dart';
import 'package:wallet_app_ui/components/SendMoney_Components/SendMoeny_Button.dart';
import 'package:wallet_app_ui/pages/Home_Page.dart';
import 'package:wallet_app_ui/components/SendMoney_Components/MyListView.dart';

class Send_Money_Page extends StatefulWidget {
  const Send_Money_Page({super.key});

  @override
  State<Send_Money_Page> createState() => _Send_Money_PageState();
}

class _Send_Money_PageState extends State<Send_Money_Page> {
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
              // Top Bar

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: return_PreviousPage,
                      icon: Icon(
                        Icons.navigate_before,
                        size: 45,
                      ),
                    ),
                    IconButton(
                      onPressed: return_PreviousPage,
                      icon: Icon(
                        Icons.menu,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),

              // Send Money

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Send ",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Money",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12),

              // Send Buttons

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // button 1

                    SendMoney_Button(
                      iconImagePath: "lib/icons/cash_own_acc.png",
                      text1: "To your",
                      text2: "Own account",
                    ),
                    SizedBox(width: 25),

                    // button 2

                    SendMoney_Button(
                      iconImagePath: "lib/icons/pay.png",
                      text1: "To other",
                      text2: "Bank account",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 22),

              // Search Card

              Search_Card(),

              SizedBox(height: 4),

              // Contacts List

              Expanded(
                child: Container(
                  child: MyListView(),
                ),
              )
            ],
          ),
        ));
  }
}
