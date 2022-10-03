import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monarch_mart/common/app_widget.dart';
import 'package:monarch_mart/common/config.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: AppCon.widget.homeDrawer(),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppCon.widget.homeTopDawarAndSearch(
                onPressed: () {
                  _key.currentState!.openDrawer();
                },
                onPressedsearch: () {}),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5.0.h),
                  SizedBox(height: 5.0.h),
                  const CarouselWithIndicator(),
                  SizedBox(height: 5.0.h),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppCon.widget.homeTopCategory(),
                  ),
                  SizedBox(height: 5.0.h),
                  AppCon.widget.homeSecondCategories(),
                  SizedBox(height: 15.0.h),
                  AppCon.widget.homeSecondCarouselSlider(viewportFraction: 0.6),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      AppCon.string.featuredProducts,
                      style: TextStyle(color: AppCon.color.primaryColor),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppCon.widget.homeproductview(),
                  ),
                  const SizedBox(height: 10),
                  AppCon.widget.homeSecondCarouselSlider(viewportFraction: 0.9),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppCon.widget.homeFeaturedAndViewAllInRow(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppCon.widget.homeproductview(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
