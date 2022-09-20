import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  color: AppCon.color.primaryColor,
                ),
              ),

              ///comment

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
                    AppWidget().getTextField(
                      hint: "Enter Your Email",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    AppWidget().getTextField(hint: "Enter Your Password"),
                    SizedBox(
                      height: 20.h,
                    ),
                    AppWidget().eluvaterButtonLoginPage(text: "Login")
                  ]),
                ),
              ),

              /// comment
            ],
          ),
        ),
      ),
    );
  }
}
