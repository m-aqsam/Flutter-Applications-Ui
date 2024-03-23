// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PostButton extends StatelessWidget {
  final icon;
  final String number;
  const PostButton({
    super.key,
    required this.icon,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Icon(
            icon,
            size: 38,
          ),
          Text(number),
        ],
      ),
    );
  }
}
