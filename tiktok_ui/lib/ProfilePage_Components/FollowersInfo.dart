// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FollowersInfo extends StatelessWidget {
  final String following;
  final String followers;
  final String likes;

  const FollowersInfo({
    super.key,
    required this.following,
    required this.followers,
    required this.likes,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Following
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  Text(
                    following,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Following",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          // Followers
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    followers,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Followers",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),

          // Likes

          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text(
                    likes,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Like",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
