import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Slideshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/D1.jpg'),
        AssetImage('images/M1.jpg'),
        AssetImage('images/D2.jpg'),
        AssetImage('images/M2.jpg'),
        AssetImage('images/M3.jpg'),
        AssetImage('images/D3.jpg'),
        AssetImage('images/M4.jpg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 3.0,
      indicatorBgPadding: 6.0,
    );
  }
}
