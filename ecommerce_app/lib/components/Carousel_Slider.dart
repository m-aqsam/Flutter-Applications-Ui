import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carusel_Slider extends StatelessWidget {
  Carusel_Slider({super.key});

  final List<Widget> carouselImages = [
    // Carousl Images
    Image.asset("lib/images/carouselimage1.png"),
    Image.asset("lib/images/carouselimage2.png"),
    Image.asset("lib/images/carouselimage3.png"),
    Image.asset("lib/images/carouselimage4.png"),
    Image.asset("lib/images/carouselimage5.png"),
    Image.asset("lib/images/carouselimage6.png"),
    Image.asset("lib/images/carouselimage7.png"),
    Image.asset("lib/images/carouselimage8.png"),
    Image.asset("lib/images/carouselimage9.png"),
    Image.asset("lib/images/carouselimage10.png"),
    Image.asset("lib/images/carouselimage11.png"),
    Image.asset("lib/images/carouselimage12.png"),
  ];

  // Map
  final Map<String, String> imagePaths = {
    "image1": "lib/images/carouselimage1.png",
    "image2": "lib/images/carouselimage2.png",
    "image3": "lib/images/carouselimage3.png",
    "image4": "lib/images/carouselimage4.png",
    "image5": "lib/images/carouselimage5.png",
    "image6": "lib/images/carouselimage6.png",
    "image7": "lib/images/carouselimage7.png",
    "image8": "lib/images/carouselimage8.png",
    "image9": "lib/images/carouselimage9.png",
    "image10": "lib/images/carouselimage10.png",
    "image11": "lib/images/carouselimage11.png",
    "image12": "lib/images/carouselimage12.png",
  };

  @override
  Widget build(BuildContext context) {
    return // Carlousel Slider

        CarouselSlider(
      options: CarouselOptions(
        height: 185,
        aspectRatio: 16 / 9,
        viewportFraction: 1.0,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 4),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        //enlargeCenterPage: true,
        enlargeFactor: 0.5,
        scrollDirection: Axis.horizontal,
      ),
      // items: carouselImages,

      items: imagePaths.keys.map((key) {
        return SizedBox(
          width: double.maxFinite,
          child: Image.asset(
            imagePaths[key]!,
            fit: BoxFit.cover,
          ),
        );
      }).toList(),
    );
  }
}
