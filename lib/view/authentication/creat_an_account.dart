import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monarch_mart/common/config.dart';
import 'package:monarch_mart/common/app_widget.dart';

class CreatAnAccount extends StatelessWidget {
  CreatAnAccount({super.key});

  final commonWidget = AppWidget();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppCon.color.primaryColor,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: AppCon.color.scaffoldBGColor,
      body: SafeArea(
          child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            color: AppCon.color.primaryColor,
            height: 500.h,
          ),
          Positioned(
            bottom: -120.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100.h,
                height: 570.h,
                color: Colors.transparent,
                child: Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Positioned(
                            top: 50,
                            left: 40,
                            child: AppWidget().inAppBackButton()),
                        AppWidget().monarchMartlogoShow(
                          height: 130.0.h,
                          width: 130.0.h,
                          child: Image.asset(
                            'assets/images/logowithprimarycolor.png',
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(AppCon.string.creatAnAccount,
                            style:
                                TextStyle(color: AppCon.color.scaffoldBGColor)),
                        SizedBox(
                          height: 10.h,
                        ),
                        AppWidget().loginIDandCreateAccountTextField(
                            hint: "Enter Your Name"),
                        SizedBox(
                          height: 10.h,
                        ),
                        AppWidget().loginIDandCreateAccountTextField(
                            hint: "Enter Your Email"),
                        SizedBox(
                          height: 10.h,
                        ),
                        AppWidget().loginIDandCreateAccountTextField(
                            hint: "Enter Your Phone"),
                        SizedBox(
                          height: 10.h,
                        ),
                        AppWidget().loginIDandCreateAccountTextField(
                            hint: "Enter Your Password"),
                        SizedBox(
                          height: 10.h,
                        ),
                        AppWidget().loginIDandCreateAccountTextField(
                            hint: "Confirm Password"),
                        SizedBox(
                          height: 10.h,
                        ),
                        AppWidget().elevatedButtonLogin(
                          width: double.infinity,
                          text: "create an Account",
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        AppWidget().elevatedButtonLogin(
                            width: double.infinity,
                            text: "Alraedy Registered",
                            onPressed: (() {})),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
