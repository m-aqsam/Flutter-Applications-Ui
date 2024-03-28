// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallet_app_ui/components/Bil_Payment_Page_components/Bill_Types_Container.dart';

class All_Bills_Type_List extends StatelessWidget {
  const All_Bills_Type_List({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Row 1
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Bill_Type_Container(
              icon_Image_Path: "lib/icons/flash.png",
              bill_Name: "Electricity",
            ),
            Bill_Type_Container(
              icon_Image_Path: "lib/icons/phone-call.png",
              bill_Name: "Telephone",
            ),
            Bill_Type_Container(
              icon_Image_Path: "lib/icons/flame.png",
              bill_Name: "Gas",
            ),
          ],
        ),

        SizedBox(height: 4),

        // Row 2

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Bill_Type_Container(
              icon_Image_Path: "lib/icons/worldwide.png",
              bill_Name: "Internet",
            ),
            Bill_Type_Container(
              icon_Image_Path: "lib/icons/recycling-water.png",
              bill_Name: "Water",
            ),
            Bill_Type_Container(
              icon_Image_Path: "lib/icons/solar-panel.png",
              bill_Name: "Solar",
            ),
          ],
        ),

        SizedBox(height: 4),

        // Row 3

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Bill_Type_Container(
              icon_Image_Path: "lib/icons/scholarship.png",
              bill_Name: "Education",
            ),
            Bill_Type_Container(
              icon_Image_Path: "lib/icons/government.png",
              bill_Name: "Government",
            ),
            Bill_Type_Container(
              icon_Image_Path: "lib/icons/credit-card-blue.png",
              bill_Name: "Credit Card",
            ),
          ],
        ),

        SizedBox(height: 4),

        // Row 4

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Bill_Type_Container(
              icon_Image_Path: "lib/icons/menu2.png",
              bill_Name: "Others",
            ),
          ],
        ),
      ],
    );
  }
}
