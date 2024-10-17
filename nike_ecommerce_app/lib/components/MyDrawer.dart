// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        children: [
          // logo

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset(
              "lib/images/nikelogo1.png",
              height: 190,
              color: Colors.white,
            ),
          ),

          // Divider

          Divider(
            color: Colors.grey[700],
          ),

          // Home Buttons

          Container(
            // color: Colors.green,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Shop_Page()),
                    // );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // Profile Buttons

                InkWell(
                  onTap: () {
                    // Profile Page

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Profile_Page()),
                    // );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // About  Buttons

                InkWell(
                  onTap: () {
                    // on tap move to the page
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.info_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: Text(
                      "About",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 260),
                // Logout  Buttons

                Container(
                  color: Colors.deepOrange,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          // on tap move to the page
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.logout,
                            color: Colors.white,
                            size: 30,
                          ),
                          title: Text(
                            "Logout",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10),

                Divider(
                  color: Colors.grey[500],
                ),

                // Version

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(
                    "Version 5.15.15.56",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18,
                    ),
                  ),
                ),

                Divider(
                  color: Colors.grey[500],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
