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
              AppCon.widget.backbuttonPrimaryColor(),
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
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        hint: "Enter Your Email",
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppWidget().loginIDandCreateAccountTextField(
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          hint: "Enter Your Password"),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    AppCon.widget.customContainerButton(
                        onTap: () {
                          Get.to(const LoginWithUserID());
                        },
                        child: Center(
                          child: Text(
                            AppCon.string.login,
                            style:
                                TextStyle(color: AppCon.color.scaffoldBGColor),
                          ),
                        ),
                        colorBG: AppCon.color.primaryColor,
                        colorBorder: AppCon.color.primaryColor,
                        width: double.infinity,
                        height: 45.0.h),
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
