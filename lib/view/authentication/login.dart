import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monarch_mart/common/config.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  Widget eluvaterButtonLoginPage({required String text}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(color: AppCon.color.primaryColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: AppCon.color.primaryColor, fontSize: 16.sp),
        ),
      ),
    );
  }

  Widget getTextField({required String hint}) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.pink),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: AppCon.color.primaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppCon.color.primaryColor),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppCon.color.scaffoldBGColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0.h),
          child: Center(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                Container(
                  color: Colors.white,
                  height: 230.h,
                  child: Image.asset(
                    'assets/images/logo.jpg',
                  ),
                ),
                Text(
                  AppCon.string.login,
                  style: TextStyle(
                      color: AppCon.color.primaryColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  AppCon.string.enterYourMobileNumber,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppCon.color.primaryTextColorBold,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                getTextField(hint: "Enter Your Phone Numbr"),
                SizedBox(
                  height: 10.h,
                ),
                eluvaterButtonLoginPage(text: (AppCon.string.loginWithOTP)),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  AppCon.string.or,
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: AppCon.color.primaryTextColorBold,
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  height: 10.h,
                ),
                eluvaterButtonLoginPage(text: (AppCon.string.loginWithUserID)),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  AppCon.string.dontHaveAnAccount,
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AppCon.color.primaryTextColorBold,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  AppCon.string.creatAnAccount,
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AppCon.color.primaryColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
