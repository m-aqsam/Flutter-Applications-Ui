import 'package:flutter/material.dart';
import 'package:tiktok_ui/HomePage_Components/Post_Template.dart';

class Post5 extends StatelessWidget {
  const Post5({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "Maryam Awan",
      caption: "Teri Jhuki Nazr 🌚🕊️❤️.",
      hashtags: "#viral #fyp #foryou #love",
      likes: "29.4K",
      comments: "164",
      favorite: "3372",
      shares: "590",
      userpost: Container(
        color: Colors.teal[700],
      ),
    );
  }
}
