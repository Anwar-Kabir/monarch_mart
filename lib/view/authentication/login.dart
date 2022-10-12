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
      //backgroundColor: AppCon.color.scaffoldBGColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                AppCon.widget.backbuttonPrimaryColor(
                    coloricon: AppCon.color.primaryColor),
                AppCon.widget.verticalSpace(height: 20),
                AppWidget().monarchMartlogotransparent(
                  height: 150.0.h,
                  width: 190.0.w,
                  child: Image.asset(
                    'assets/images/logo.jpg',
                  ),
                ),
                Text(
                  AppCon.string.login,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                AppCon.widget.verticalSpace(height: 20.h),
                Text(
                  AppCon.string.enterYourMobileNumber,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                AppCon.widget.verticalSpace(height: 10.h),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AppCon.widget.loginIDandCreateAccountTextField(
                    textAlign: TextAlign.justify,
                    keyboardType: TextInputType.number,
                    hint: "Enter Your Phone Number",
                    prefixIcon: AppCon.widget.flagTextFiedLogin(),
                  ),
                ),
                AppCon.widget.verticalSpace(height: 10.h),
                AppCon.widget.customContainerButton(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        AppCon.string.loginWithOTP,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    colorBorder: AppCon.color.primaryColor,
                    width: double.infinity,
                    height: 45.0.h),
                AppCon.widget.verticalSpace(height: 10.h),
                Text(AppCon.string.or,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w100,
                          fontSize: 16.0,
                        )),
                AppCon.widget.verticalSpace(height: 10.h),
                AppCon.widget.customContainerButton(
                    onTap: () {
                      Get.to(const LoginWithUserID());
                    },
                    child: Center(
                      child: Text(
                        AppCon.string.loginWithUserID,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    colorBorder: AppCon.color.primaryColor,
                    width: double.infinity,
                    height: 45.0.h),
                AppCon.widget.verticalSpace(height: 10.h),
                Text(AppCon.string.dontHaveAnAccount,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontWeight: FontWeight.w500)),
                InkWell(
                  onTap: () {
                    Get.to(CreatAnAccount());
                  },
                  child: Text(
                    AppCon.string.creatAnAccount,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
