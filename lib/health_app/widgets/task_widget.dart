import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam_app_c10_monday/health_app/widgets/container_task_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TaskWidget extends StatefulWidget {
  const TaskWidget({super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  int _current = 0;

  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CarouselSlider(
          items: const [
            ContainerTaskWidget(),
            ContainerTaskWidget(),
            ContainerTaskWidget(),
          ],
          options: CarouselOptions(
            viewportFraction: 1,
            enableInfiniteScroll: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            initialPage: 0,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        AnimatedSmoothIndicator(
          activeIndex: _current,
          count: 3,
          effect: const WormEffect(
            activeDotColor: Color(0xFF98A2B3),
            dotColor: Color(0xFFD9D9D9),
            dotHeight: 10,
            dotWidth: 10,
          ), // your preferred effect
          onDotClicked: (index) {},
        ),
      ],
    );
  }
}
