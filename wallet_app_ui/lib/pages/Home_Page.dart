// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/components/HomePage_Components/MyListTile.dart';
import 'package:wallet_app_ui/components/HomePage_Components/My_Button.dart';
import 'package:wallet_app_ui/components/HomePage_Components/My_Card.dart';
import 'package:wallet_app_ui/components/HomePage_Components/Top_Bar.dart';

import 'package:wallet_app_ui/pages/Send_Money_Page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  // Page Controller

  final _controller = PageController();

  void send_ontap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Send_Money_Page()),
    );
  }

  void pay_ontap() {}
  void bill_ontap() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],

        // Float

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.deepPurple[300],
          // label: Text("Scan Code"),
          child: Icon(
            Icons.qr_code,
            size: 40,
          ),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        // Bottom Nav Bar

        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 45,
                ),
              ),
              SizedBox(width: 160),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              // app bar

              Top_Bar(),

              // cards

              Container(
                height: 245,
                child: PageView(
                  controller: _controller,
                  children: [
                    // Card 1

                    My_Card(
                      balance: 52350.20,
                      cardNumber: "12345678",
                      expiryDateMonth: "10",
                      expiryDateYear: "2024",
                      cardColor: Colors.deepPurple.shade300,
                    ),
                    // Card 2

                    My_Card(
                      balance: 3498.49,
                      cardNumber: "12345678",
                      expiryDateMonth: "08",
                      expiryDateYear: "2026",
                      cardColor: Colors.green,
                    ),
                    // Card 3

                    My_Card(
                      balance: 2678.55,
                      cardNumber: "12345678",
                      expiryDateMonth: "03",
                      expiryDateYear: "2025",
                      cardColor: Colors.pink,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // Page Indicator

              SmoothPageIndicator(
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                ),
                controller: _controller,
                count: 3,
                onDotClicked: (index) {
                  _controller.jumpToPage(index);
                },
              ),

              SizedBox(height: 25),

              // buttons

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    My_Button(
                      my_ontap: send_ontap,
                      iconImagePath: "lib/icons/send-money.png",
                      button_text: "Send",
                    ),
                    My_Button(
                      my_ontap: pay_ontap,
                      iconImagePath: "lib/icons/credit-card2.png",
                      button_text: "Pay",
                    ),
                    My_Button(
                      my_ontap: bill_ontap,
                      iconImagePath: "lib/icons/invoice.png",
                      button_text: "Bill",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              // Column -> Stats , Transaction

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    MyListTile(
                      iconpath: "lib/icons/spreadsheet-app.png",
                      heading: "Statistics",
                      subHeading: "Payments and income",
                    ),
                    MyListTile(
                      iconpath: "lib/icons/cash-flow.png",
                      heading: "Transactions",
                      subHeading: "Transactions History",
                    ),
                  ],
                ),
              )

              // Bottom Nav Bar
            ],
          ),
        ),
      ),
    );
  }
}
