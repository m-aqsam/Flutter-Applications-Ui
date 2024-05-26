// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecommerce_app/components/MyProfileList.dart';
import 'package:ecommerce_app/components/ProfileOption.dart';
import 'package:ecommerce_app/models/Shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({super.key});

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  String? imagePath;

  // Change Avatar Method
  void changeAvatar() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.grey[300],
          title: Text("Change Avatar"),
          content: Text("Select an image from the gallery"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),

            // Select Bu
            TextButton(
              onPressed: () async {
                // Pick an image from the gallery (Still not solve)

                //   Here Start of Method (But Got some errors) ****

                //
                // final imagePicker = ImagePicker();
                // final XFile? pickedFile =
                //     await imagePicker.pickImage(source: ImageSource.gallery);

                // if (pickedFile != null) {
                //   // Update the profile image
                //   setState(() {
                //     // Assuming you have a variable to store the image path
                //     imagePath = pickedFile.path;
                //   }

                //   );
                // }

                Navigator.of(context).pop();
              },
              child: Text("Select"),
            ),
          ],
        );
      },
    );
  }

  // ******************** Scaffold *********************
  @override
  Widget build(BuildContext context) {
    // Get Access to the cart
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      // App BAr

      appBar: AppBar(
        title: Center(
          child: Text(
            "My Profile",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      // Body

      body: Column(
        children: [
          // *************** Header Container ********************

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      // Profile Photo

                      CircleAvatar(
                        backgroundImage: AssetImage(
                            "lib/images/profileimages/profileimage1.jpg"),
                        radius: 40,
                      ),

                      SizedBox(width: 18),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // User Name

                          Text(
                            "Amelia Jacob",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 2),
                          // Get Club Membership

                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 0),
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Get Our Club Membership >",
                              style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 25),

                  // Followers / Stats

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // ********** Cart Items
                      Container(
                        child: Column(
                          children: [
                            // Followers

                            Text(
                              cart.length.toString(),
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),

                            // Text

                            Text("Cart Items")
                          ],
                        ),
                      ),
                      // SizedBox(width: 50),

                      // ********** My WhishList
                      Container(
                        child: Column(
                          children: [
                            // Followers

                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),

                            // Text

                            Text("My Wishlist")
                          ],
                        ),
                      ),
                      // *************** Store Followed
                      Container(
                        child: Column(
                          children: [
                            // Followers

                            Text(
                              '0',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),

                            // Text

                            Text("Store Followed")
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          SizedBox(height: 18),

          // List

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyProfileList(
                imagePath: "lib/images/profileimages/topay.png",
                text: "To Pay",
              ),
              MyProfileList(
                imagePath: "lib/images/profileimages/toship.png",
                text: "To Ship",
              ),
              MyProfileList(
                imagePath: "lib/images/profileimages/torecieve.png",
                text: "To Receive",
              ),
              MyProfileList(
                imagePath: "lib/images/profileimages/toreview.png",
                text: "To Review",
              ),
            ],
          ),

          SizedBox(height: 18),

          // Profile Options

          ProfileOption(
            optionName: "Change Avatar",
            onTap: changeAvatar,
          ),
          ProfileOption(
            optionName: "Settings",
            onTap: () {
              // Code
            },
          ),
          ProfileOption(
            optionName: "My Orders",
            onTap: () {
              // Code
            },
          ),
          ProfileOption(
            optionName: "Preferences",
            onTap: () {
              // Code
            },
          ),
          ProfileOption(
            optionName: "Help \& Support",
            onTap: () {
              // Code
            },
          ),

          SizedBox(height: 15),

          // Logout

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),

          //
        ],
      ),
    );
  }
}
