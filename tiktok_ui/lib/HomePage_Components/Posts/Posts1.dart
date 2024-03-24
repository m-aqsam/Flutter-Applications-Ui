// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tiktok_ui/HomePage_Components/PostButtons.dart';
import 'package:tiktok_ui/HomePage_Components/Post_Template.dart';

class Post1 extends StatelessWidget {
  const Post1({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "M Aqsam",
      caption: "No Caption ❤️😩.",
      hashtags: "#fyp #flutter #for_you #new",
      likes: "49.4K",
      comments: "3226",
      favorite: "5002",
      shares: "3273",
      userpost: Container(
        color: Colors.black,
      ),
    );
  }
}
