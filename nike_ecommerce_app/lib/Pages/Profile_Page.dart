// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:nike_ecommerce_app/components/ProfileOption.dart';
import 'package:image_picker/image_picker.dart';

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

                //****   Here Start of Method (But Got some errors) ****

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Page Name

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My Profile",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        // Profile Photo

        CircleAvatar(
          backgroundImage: AssetImage("lib/images/profileimage1.jpg"),
          radius: 75,
        ),

        SizedBox(height: 18),

        // User Name

        Text(
          "Amelia Jacob",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 30),

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
    );
  }
}
