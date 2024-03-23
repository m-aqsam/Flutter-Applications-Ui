import 'package:flutter/material.dart';
import 'package:tiktok_ui/HomePage_Components/Posts/Post_Template.dart';

class Post4 extends StatelessWidget {
  const Post4({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "Startup Pakistan",
      caption: "Today Big Update 📍.",
      hashtags: "#foryoupage #news #viral #foryou",
      likes: "1154",
      comments: "38",
      favorite: "77",
      shares: "46",
      userpost: Container(
        color: Colors.deepOrange[400],
      ),
    );
  }
}
