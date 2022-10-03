import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:monarch_mart/common/config.dart';
import 'package:monarch_mart/common/app_widget.dart';
import 'package:monarch_mart/view/authentication/login.dart';

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
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: AppCon.color.primaryColor,
                  height: 500.h,
                ),
                Positioned(
                  //bottom: -120.0.h,
                  left: 0,
                  right: 0,
                  top: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130.0.h,
                              child: Stack(
                                children: [
                                  AppWidget().backbuttonPrimaryColor(
                                      coloricon: AppCon.color.scaffoldBGColor),
                                  Positioned(
                                    left: 2.0.h,
                                    right: 2.0.h,
                                    child:
                                        AppWidget().monarchMartlogotransparent(
                                      height: 130.0.h,
                                      width: 130.0.h,
                                      child: Image.asset(
                                        'assets/images/logowithprimarycolor.png',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(AppCon.string.creatAnAccount,
                                style: TextStyle(
                                    color: AppCon.color.scaffoldBGColor)),
                            SizedBox(
                              height: 10.h,
                            ),
                            AppWidget().loginIDandCreateAccountTextField(
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                hint: "Enter Your Name"),
                            SizedBox(
                              height: 10.h,
                            ),
                            AppWidget().loginIDandCreateAccountTextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                hint: "Enter Your Phone"),
                            SizedBox(
                              height: 10.h,
                            ),
                            AppWidget().loginIDandCreateAccountTextField(
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                hint: "Enter Your Email"),
                            SizedBox(
                              height: 10.h,
                            ),
                            AppWidget().loginIDandCreateAccountTextField(
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                hint: "Enter Your Password"),
                            SizedBox(
                              height: 10.h,
                            ),
                            AppWidget().loginIDandCreateAccountTextField(
                                keyboardType: TextInputType.text,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                hint: "Confirm Password"),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: AppCon.color.primaryColor,
                child: AppCon.widget.customContainerButton(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        AppCon.string.creatAnAccount,
                        style: TextStyle(color: AppCon.color.scaffoldBGColor),
                      ),
                    ),
                    colorBorder: AppCon.color.primaryColor,
                    width: double.infinity,
                    height: 45.0.h),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: AppCon.color.primaryColor,
                child: AppCon.widget.customContainerButton(
                    onTap: () {
                      Get.to(const Login());
                    },
                    child: Center(
                      child: Text(
                        AppCon.string.alreadyRegistered,
                        style: TextStyle(color: AppCon.color.scaffoldBGColor),
                      ),
                    ),
                    colorBorder: AppCon.color.primaryColor,
                    width: double.infinity,
                    height: 45.0.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
