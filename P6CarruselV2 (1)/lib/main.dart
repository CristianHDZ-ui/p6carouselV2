import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Carousel  Hernandez',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarouselHernandez(),
    );
  }
}

class CarouselHernandez extends StatelessWidget {
  final List<String> imageList = [
    "https://raw.githubusercontent.com/CristianHDZ-ui/P6CarruselV2/main/carros/audi.png",
    "https://raw.githubusercontent.com/CristianHDZ-ui/P6CarruselV2/main/carros/challenger.png",
    "https://raw.githubusercontent.com/CristianHDZ-ui/P6CarruselV2/main/carros/mustang.png",
    "https://raw.githubusercontent.com/CristianHDZ-ui/P6CarruselV2/main/carros/sierra.png",
    "https://raw.githubusercontent.com/CristianHDZ-ui/P6CarruselV2/main/carros/tesla.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slider Hernandez'),
      ),
      body: Center(
        child: CarouselSlider(
          items: imageList.map((imgUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 300.0,
            viewportFraction: 0.8,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
          ),
        ),
      ),
    );
  }
}
