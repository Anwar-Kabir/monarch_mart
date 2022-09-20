import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monarch_mart/common/config.dart';
import 'package:monarch_mart/common/app_widget.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppCon.color.primaryColor,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppCon.color.primaryColor,
          title: const Text("All Categories"),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ]),
      body: SafeArea(
          child: Column(
        children: [
          AppWidget().getTextField(hint: "Search Category"),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  Container(
                    color: AppCon.color.primaryColor,
                    height: 200.h,
                  ),
                ],
              ),
              Positioned(
                //top: -10,
                left: 0,
                right: 0,
                bottom: -370,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.pink,
                    width: 130.h,
                    height: 400.h,
                    child: AppWidget().categoriesgridview(),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
