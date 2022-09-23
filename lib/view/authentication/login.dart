import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:monarch_mart/common/app_widget.dart';
import 'package:monarch_mart/common/config.dart';
import 'package:monarch_mart/view/authentication/creat_an_account.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                AppWidget().monarchMartlogoShow(
                  height: 230.0.h,
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
                AppCon.widget.loginIDandCreateAccountTextField(
                    hint: "Enter Your Phone Numbr"),
                SizedBox(
                  height: 10.h,
                ),
                AppCon.widget.elevatedButtonLogin(
                    onPressed: () {},
                    text: (AppCon.string.loginWithOTP),
                    width: double.infinity),
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
                AppCon.widget.elevatedButtonLogin(
                    onPressed: () {},
                    text: (AppCon.string.loginWithUserID),
                    width: double.infinity),
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
                InkWell(
                  onTap: () {
                    Get.to(CreatAnAccount());
                  },
                  child: Text(
                    AppCon.string.creatAnAccount,
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: AppCon.color.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
