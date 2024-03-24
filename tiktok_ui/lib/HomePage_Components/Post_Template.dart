// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tiktok_ui/HomePage_Components/PostButtons.dart';

class PostTemplate extends StatelessWidget {
  final String username;
  final String caption;
  final String hashtags;
  final String likes;
  final String comments;
  final String favorite;
  final String shares;
  final userpost;

  const PostTemplate({
    super.key,
    required this.username,
    required this.caption,
    required this.hashtags,
    required this.likes,
    required this.comments,
    required this.favorite,
    required this.shares,
    required this.userpost,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // user post

          userpost,

          // name and captions

          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // name

                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: username,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text: " . 2d ago",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade300)),
                    ],
                  ),
                ),

                // sized box
                SizedBox(height: 6),

                // caption and hashtags

                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: caption, style: TextStyle(fontSize: 18)),
                      TextSpan(text: "\n"),
                      TextSpan(
                          text: hashtags,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Likes , Comment and favourite buttons

          Container(
            alignment: Alignment(1, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                PostButton(
                  icon: Icons.favorite,
                  number: likes,
                ),
                PostButton(
                  icon: Icons.chat_bubble_outlined,
                  number: comments,
                ),
                PostButton(
                  icon: Icons.bookmark,
                  number: favorite,
                ),
                PostButton(
                  icon: Icons.send,
                  number: shares,
                ),

                SizedBox(height: 10),

                // song

                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Container(
                    alignment: Alignment(1, -1),
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            Icons.music_note_rounded,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // Tik Tok Logo
              ],
            ),
          ),
        ],
      ),
    );
  }
}
