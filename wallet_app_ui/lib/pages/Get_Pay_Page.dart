// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wallet_app_ui/components/Get_Pay_Page_components/My_Container.dart';
import 'package:wallet_app_ui/pages/Home_Page.dart';
import 'package:flutter/services.dart';

class Get_Pay_Page extends StatefulWidget {
  const Get_Pay_Page({super.key});

  @override
  State<Get_Pay_Page> createState() => _Get_Pay_PageState();
}

class _Get_Pay_PageState extends State<Get_Pay_Page> {
  void return_PreviousPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home_Page()),
    );
  }

  // Wallet number copy

  void wallet_Copy_Clipboard() {
    final value = ClipboardData(text: "03180077899");
    Clipboard.setData(value);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
            child: Text(
          "Copy",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        )),
        backgroundColor: Colors.black,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.symmetric(horizontal: 145, vertical: 15),
        duration: Duration(seconds: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
  // IBAN number copy

  void IBAN_Copy_Clipboard() {
    final value = ClipboardData(text: "PK41 Wallet 0000 0031 8635 6456");
    Clipboard.setData(value);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
            child: Text(
          "Copy",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        )),
        backgroundColor: Colors.black,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.symmetric(horizontal: 145, vertical: 15),
        duration: Duration(seconds: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  // ************************* Scaffold **********************************

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              // Back Icons

              Row(
                children: [
                  InkWell(
                    onTap: return_PreviousPage,
                    child: Icon(
                      Icons.navigate_before_rounded,
                      size: 45,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12),

              // Load Money Text

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Load ",
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

              SizedBox(height: 10),

              // limit text

              Row(
                children: [
                  Text(
                    "Rs. 399,500",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "incoming limit left this month",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),

              // Receive local transfer

              Row(
                children: [
                  Text(
                    "Receive local transfer",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: 15),

              // container

              MyContainer(
                accType: "My Wallet account number",
                accNumber: "03180077899",
                myontap: wallet_Copy_Clipboard,
              ),

              SizedBox(height: 25),

              // Receive international transfer

              Row(
                children: [
                  Text(
                    "Receive international transfer",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: 15),
              MyContainer(
                accType: "My Wallet IBAN number",
                accNumber: "PK41 Wallet 0000 0031 8635 6456",
                myontap: IBAN_Copy_Clipboard,
              ),

              //container
            ],
          ),
        ),
      ),
    );
  }
}
