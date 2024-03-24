// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tiktok_ui/ProfilePage_Components/Account_Status.dart';
import 'package:tiktok_ui/ProfilePage_Components/FollowersInfo.dart';
import 'package:tiktok_ui/ProfilePage_Components/Profile_Buttons.dart';
import 'package:tiktok_ui/ProfilePage_Components/Tabs/01_Video_Tabs.dart';
import 'package:tiktok_ui/ProfilePage_Components/Tabs/02_Lock_Video_Tab.dart';
import 'package:tiktok_ui/ProfilePage_Components/Tabs/03_Repost_Video_Tab.dart';
import 'package:tiktok_ui/ProfilePage_Components/Tabs/04_Favourite_Video_Tab.dart';
import 'package:tiktok_ui/ProfilePage_Components/Tabs/05_Liked_Video_Tab.dart';

class User_ProfilePage extends StatelessWidget {
  const User_ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Top Bar

                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Name
                      Text(
                        'M Aqsam.',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 62),

                      // Icons
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.remove_red_eye_sharp),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.menu),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Account Status

                Account_Status(),

                SizedBox(height: 12),
                // profile photo

                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 55,
                ),

                SizedBox(height: 12),

                // username

                Text(
                  "@notaqsam",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),

                SizedBox(height: 12),

                // followers list

                FollowersInfo(
                  following: "69",
                  followers: "536",
                  likes: "1337",
                ),

                SizedBox(height: 15),

                // buttons

                Profile_Buttons(),

                SizedBox(height: 20),

                // Tabs Controller

                TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_3x3),
                    ),
                    Tab(
                      icon: Icon(Icons.lock_outline_rounded),
                    ),
                    Tab(
                      icon: Icon(Icons.repeat),
                    ),
                    Tab(
                      icon: Icon(Icons.bookmark_outline),
                    ),
                    Tab(
                      icon: Icon(Icons.favorite_outline),
                    ),
                  ],
                ),

                //Tab Bar View

                Expanded(
                  child: TabBarView(children: [
                    Video_Tab(),
                    Lock_Video_Tab(),
                    Repost_Video_Tab(),
                    Favourite_Video_Tab(),
                    Liked_Video_Tab(),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
