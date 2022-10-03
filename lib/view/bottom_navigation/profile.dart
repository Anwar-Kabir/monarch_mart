import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:monarch_mart/common/app_widget.dart';
import 'package:monarch_mart/common/config.dart';
import 'package:monarch_mart/view/authentication/login.dart';
import 'package:monarch_mart/view/bottom_navigation/profile/more_settings_webview.dart';
import 'package:monarch_mart/view/bottom_navigation/profile/order_history.dart';
import 'package:monarch_mart/view/bottom_navigation/profile/shipping_address.dart';
import 'package:monarch_mart/view/check_out.dart';

import 'profile/edit_profile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ///all elevatedButton for UI test
                ElevatedButton(
                  onPressed: () {
                    Get.to(const Login());
                  },
                  child: const Text("Go - login and logout page"),
                ),

                ///this update check diolog not working on elevated Button
                ElevatedButton(
                  onPressed: () {
                    AppCon.widget.isUpdateAvailable();
                  },
                  child: const Text("Go - update check diolog"),
                ),

                ///check out page UI
                ElevatedButton(
                  onPressed: () {
                    Get.to(const CheckOut());
                  },
                  child: const Text("Go - check out page"),
                ),
                AppWidget().profileListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: AppCon.color.primaryColor,
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    leading: const Icon(Icons.person),
                    title: "Your Name",
                    subtitle: "Your Email",
                    trailing: IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        Get.to(const EditProfile());
                      },
                    )),
                AppWidget().profileListTile(
                  leading: const Icon(Icons.person),
                  title: "My Account",
                  subtitle: "Make changes to your account",
                  trailing: const Icon(Icons.arrow_forward_ios,
                      color: Colors.black87),
                ),
                AppWidget().profileListTile(
                  onTap: () {
                    Get.to(const OrderHistory());
                  },
                  leading: const Icon(Icons.person),
                  title: "Order History",
                  subtitle: "Take a look at your Orders",
                  trailing: const Icon(Icons.arrow_forward_ios,
                      color: Colors.black87),
                ),
                AppWidget().profileListTile(
                  onTap: () {
                    setState(() {
                      Get.to(const ShippingAdress());
                    });
                  },
                  leading: const Icon(Icons.person),
                  title: "Shipping Address",
                  subtitle: "Change or add your address",
                  trailing: const Icon(Icons.arrow_forward_ios,
                      color: Colors.black87),
                ),
                AppWidget().profileListTile(
                  onTap: () {
                    Get.defaultDialog(
                        title: AppCon.string.logout,
                        titleStyle: TextStyle(color: AppCon.color.primaryColor),
                        content: Text(AppCon.string.logoutAlart),
                        confirm: AppCon.widget.cancelBtnOutlinedButton(
                          actionName: "No",
                          color: AppCon.color.primaryColor,
                        ),
                        cancel: AppCon.widget.confirmBtn(
                            actionName: "Yes",
                            backgroundColor: AppCon.color.primaryColor),
                        barrierDismissible: false);
                  },
                  leading: const Icon(Icons.person),
                  title: "Logout",
                  subtitle: "Logout from your account",
                  trailing: const Icon(Icons.arrow_forward_ios,
                      color: Colors.black87),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      AppCon.string.moreSettings,
                      style: const TextStyle(
                          fontSize: 19.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                AppWidget().profileListTile(
                  onTap: () {
                    setState(() {
                      Get.to(const ProfileWebView());
                    });
                  },
                  leading: const Icon(Icons.person),
                  title: "Privacy Policy",
                  trailing: const Icon(Icons.arrow_forward_ios,
                      color: Colors.black87),
                ),
                AppWidget().profileListTile(
                  onTap: () {
                    setState(() {
                      Get.to(const ProfileWebView());
                    });
                  },
                  leading: const Icon(Icons.person),
                  title: "Return Policy",
                  trailing: const Icon(Icons.arrow_forward_ios,
                      color: Colors.black87),
                ),
                AppWidget().profileListTile(
                  onTap: () {
                    setState(() {
                      Get.to(const ProfileWebView());
                    });
                  },
                  leading: const Icon(Icons.person),
                  title: "Terms",
                  trailing: const Icon(Icons.arrow_forward_ios,
                      color: Colors.black87),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
