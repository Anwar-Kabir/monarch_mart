import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monarch_mart/common/config.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monarch_mart/view/bottom_navigation/bottom_navigation_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const BottomNavigationBAr())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCon.color.scaffoldBGColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.white,
              height: 450.h,
              child: Image.asset(
                'assets/images/logo.jpg',
              ),
            ),
          ),
          AppCon.widget.verticalSpace(height: 20),
          Text(
            AppCon.string.version,
            style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: AppCon.color.textColorSplashScreen,
                    fontSize: 16,
                    letterSpacing: .5)),
          ),
          Text(
            AppCon.string.versionNAme,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: AppCon.color.textColorSplashScreen,
                  fontSize: 16,
                  letterSpacing: .5),
            ),
          ),
          AppCon.widget.verticalSpace(height: 30),
          SizedBox(
            height: 30.h,
            width: 300.w,
            child: LiquidLinearProgressIndicator(
              value: 0.25, // Defaults to 0.5.
              valueColor: const AlwaysStoppedAnimation(
                  Colors.blue), // Defaults to the current Theme's accentColor.
              backgroundColor: Colors
                  .white, // Defaults to the current Theme's backgroundColor.
              borderColor: Colors.black54,
              borderWidth: 5.0,
              borderRadius: 12.0,
              direction: Axis
                  .horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
              center: const Text("Loading..."),
            ),
          ),
        ],
      ),
    );
  }
}
