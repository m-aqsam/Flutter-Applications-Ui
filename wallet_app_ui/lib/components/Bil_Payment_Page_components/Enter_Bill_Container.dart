// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallet_app_ui/pages/New_Bill_Page.dart';

class Enter_Bill_Container extends StatefulWidget {
  const Enter_Bill_Container({super.key});

  @override
  State<Enter_Bill_Container> createState() => _Enter_Bill_ContainerState();
}

class _Enter_Bill_ContainerState extends State<Enter_Bill_Container> {
  void _new_Bill_Payment() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => New_Bill_Page()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: InkWell(
        onTap: _new_Bill_Payment,
        child: Container(
          height: 110,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            //shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(12),
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

          // Row

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                // icon

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.payment_rounded,
                    size: 40,
                    color: Colors.red,
                  ),
                ),

                SizedBox(width: 18),

                //Text

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New Bill Payment",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "pay your bills to 900+ companies\nin pakistan",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
