// ignore_for_file: camel_case_types, prefer_final_fields, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:onboarding_screens/OnBoarding_Screens/ContentScreen.dart';

import 'package:onboarding_screens/components/NextButton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding_Screen extends StatefulWidget {
  const OnBoarding_Screen({super.key});

  @override
  State<OnBoarding_Screen> createState() => _OnBoarding_ScreenState();
}

class _OnBoarding_ScreenState extends State<OnBoarding_Screen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              // Screen 1
              ContentScreen(
                image: 'lib/images/metalic3d.png',
                tittle: 'Explore',
                description:
                    "With so much conflict in the world, space exploration can be a beacon of hope.",
              ),
              // Screen 2
              ContentScreen(
                image: 'lib/images/brain.png',
                tittle: 'Create',
                description:
                    "With so much conflict in the world, space exploration can be a beacon of hope.",
              ),
              // Screen 3
              ContentScreen(
                image: 'lib/images/goldtrophy.png',
                tittle: 'Discover',
                description:
                    "With so much conflict in the world, space exploration can be a beacon of hope.",
              ),
            ],
          ),

          //Smooth Indicator
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Image

              // Text

              // PageIndicator
              Container(
                alignment: Alignment(0, 0.75),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey.shade400,
                    activeDotColor: Colors.black,
                  ),
                ),
              ),

              SizedBox(height: 50),

              // Button

              GestureDetector(
                onTap: () {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                },
                child: NextButton(),
              ),

              SizedBox(height: 30),
            ],
          ),
        ],
      ),
    );
  }
}
