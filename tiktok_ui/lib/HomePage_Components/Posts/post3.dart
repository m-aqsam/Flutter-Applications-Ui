import 'package:flutter/material.dart';
import 'package:tiktok_ui/HomePage_Components/Posts/Post_Template.dart';

class Post3 extends StatelessWidget {
  const Post3({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "Whyyoukillme?",
      caption: "Check out faleho on youtube ✌️.",
      hashtags: "#felicidad #hits__02 #foryou #love",
      likes: "21.1K",
      comments: "60",
      favorite: "4272",
      shares: "277",
      userpost: Container(
        color: Colors.pink[400],
      ),
    );
  }
}
