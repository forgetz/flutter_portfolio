import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyWorkScreen extends StatefulWidget {
  @override
  _MyWorkScreenState createState() => _MyWorkScreenState();
}

class _MyWorkScreenState extends State<MyWorkScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> list = List<String>();
    for (int i = 1; i <= 24; i++) {
      list.add('assets/works/work$i.jpg');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('My Works'),
      ),
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              autoPlay: true,
            ),
            items: list
                .map(
                  (item) => Container(
                    child: Center(
                      child: Image.asset(
                        item,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
