import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HotTopicWidget extends StatefulWidget {
  const HotTopicWidget({super.key});

  @override
  State<HotTopicWidget> createState() => _HotTopicWidgetState();
}

class _HotTopicWidgetState extends State<HotTopicWidget> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [
        Image(
          image: AssetImage('assets/images/img_news_app/img_self.png'),
        ),
        Image(
          image: AssetImage('assets/images/img_news_app/img_cycle.png'),
        ),
        Image(
          image: AssetImage('assets/images/img_news_app/img_self.png'),
        ),
      ],
      options: CarouselOptions(
        enableInfiniteScroll: true,
        // autoPlay: true,
        aspectRatio: 18 / 9,
        initialPage: 0,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          setState(() {
            current = index;
          });
        },
      ),
    );
  }
}
