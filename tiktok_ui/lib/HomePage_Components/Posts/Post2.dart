import 'package:flutter/material.dart';
import 'package:tiktok_ui/HomePage_Components/Posts/Post_Template.dart';

class Post2 extends StatelessWidget {
  const Post2({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "Shebi ❤️",
      caption: "Tu En_ 💕😩.",
      hashtags: "#fotyou #foryoupage #poetry",
      likes: "6998",
      comments: "458",
      favorite: "1047",
      shares: "1321",
      userpost: Container(
        color: Colors.grey[600],
      ),
    );
  }
}
