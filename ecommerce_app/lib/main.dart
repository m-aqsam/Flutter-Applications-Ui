// ignore_for_file: prefer_const_constructors.

import 'package:ecommerce_app/app.dart';
import 'package:ecommerce_app/models/Feature_List.dart';
import 'package:ecommerce_app/models/Shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Shop()),
        ChangeNotifierProvider(create: (context) => FeaturedList()),
      ],
      child: MyApp(),
    ),
  );
}

// * Built using Flutter with ❤️ by Aqsam.
// ! Give Your Feedback
// ? Got any question
// Todo: Let's Connect