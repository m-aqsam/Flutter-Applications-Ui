import 'package:flutter/material.dart';

class Lock_Video_Tab extends StatelessWidget {
  const Lock_Video_Tab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(1.5),
          child: Container(
            color: Colors.red,
          ),
        );
      },
    );
  }
}
