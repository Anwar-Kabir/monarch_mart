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
                  AppCon.widget.verticalSpace(height: 10.h),
                  const CarouselWithIndicator(),
                  AppCon.widget.verticalSpace(height: 5.h),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppCon.widget.homeTopCategory(),
                  ),
                  AppCon.widget.verticalSpace(height: 5.h),
                  AppCon.widget.homeSecondCategories(),
                  AppCon.widget.verticalSpace(height: 15.h),
                  AppCon.widget.homeSecondCarouselSlider(viewportFraction: 0.6),
                  AppCon.widget.verticalSpace(height: 20.h),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      AppCon.string.featuredProducts,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  AppCon.widget.verticalSpace(height: 10.h),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppCon.widget.homeproductview(),
                  ),
                  AppCon.widget.verticalSpace(height: 10.h),
                  AppCon.widget.homeSecondCarouselSlider(viewportFraction: 0.9),
                  AppCon.widget.verticalSpace(height: 10.h),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppCon.widget.homeFeaturedAndViewAllInRow(),
                  ),
                  AppCon.widget.verticalSpace(height: 10.h),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppCon.widget.homeproductview(),
                  ),
                  AppCon.widget.verticalSpace(height: 10.h),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
