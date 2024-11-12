// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tiktok_ui/HomePage_Components/MyCircle.dart';

class User_InboxPage extends StatelessWidget {
  const User_InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_circle_outline),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
        title: Center(
          child: Text("Inbox."),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Stories

            SizedBox(
              height: 110,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return MyCircle();
                  }),
            ),

            // Msgs
            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                    ),
                    title: Text("username"),
                    subtitle: Text("You shared a video."),
                    trailing: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
