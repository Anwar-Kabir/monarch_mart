import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:monarch_mart/common/app_widget.dart';
import 'package:monarch_mart/common/config.dart';
import 'package:monarch_mart/view/authentication/creat_an_account.dart';
import 'package:monarch_mart/view/authentication/login_with_user_id.dart';

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
                AppCon.widget.backbuttonPrimaryColor(),
                AppWidget().monarchMartlogotransparent(
                  height: 230.0.h,
                  width: 190.0.w,
                  child: Image.asset(
                    'assets/images/logo.jpg',
                  ),
                ),
                Text(
                  AppCon.string.login,
                  style: TextStyle(
                    color: AppCon.color.primaryColor,
                    fontSize: 20.sp,
                  ),
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
                  textAlign: TextAlign.justify,
                  keyboardType: TextInputType.number,
                  hint: "Enter Your Phone Number",
                  prefixIcon: AppCon.widget.flagTextFiedLogin(),
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppCon.widget.customContainerButton(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        AppCon.string.loginWithOTP,
                        style: TextStyle(color: AppCon.color.primaryColor),
                      ),
                    ),
                    colorBorder: AppCon.color.primaryColor,
                    width: double.infinity,
                    height: 45.0.h),
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
                AppCon.widget.customContainerButton(
                    onTap: () {
                      Get.to(const LoginWithUserID());
                    },
                    child: Center(
                      child: Text(
                        AppCon.string.loginWithUserID,
                        style: TextStyle(color: AppCon.color.primaryColor),
                      ),
                    ),
                    colorBorder: AppCon.color.primaryColor,
                    width: double.infinity,
                    height: 45.0.h),
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
