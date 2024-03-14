// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class IconTile extends StatelessWidget {
  const IconTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('lib/images/google.png'),
    );
  }
}
