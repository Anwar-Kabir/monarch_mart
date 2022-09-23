import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:monarch_mart/common/config.dart';
import 'package:monarch_mart/common/app_widget.dart';

class LoginWithUserID extends StatelessWidget {
  const LoginWithUserID({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCon.color.scaffoldBGColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0.h),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 50.h,
                width: double.infinity,
                child: IconButton(
                  alignment: Alignment.topLeft,
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  color: AppCon.color.primaryColor,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    Center(
                      child: Container(
                        color: Colors.blue,
                        //height: 130.h,
                        child: Image.asset(
                          'assets/images/logo.jpg',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppWidget().loginIDandCreateAccountTextField(
                        hint: "Enter Your Email",
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppWidget().loginIDandCreateAccountTextField(
                          hint: "Enter Your Password"),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    AppWidget().elevatedButtonLogin(
                      width: double.infinity,
                      text: "Login",
                      onPressed: () {},
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
