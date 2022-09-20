import 'package:flutter/material.dart';
import 'package:monarch_mart/common/app_widget.dart';
import 'package:monarch_mart/common/config.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Expanded(child: CarouselWithIndicator()),
          AppCon.widget.homesecondCarouselSlider(),
          const SizedBox(height: 20),
          AppCon.widget.homethirdCarouselSlider()
        ],
      )),
    );
  }
}
