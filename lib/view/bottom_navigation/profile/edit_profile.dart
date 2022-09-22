import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monarch_mart/common/config.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150.0.h,
                ),
                const Divider(
                  color: Colors.black45,
                  thickness: 1.0,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  AppCon.string.basicInformation,
                  style: TextStyle(color: AppCon.color.primaryColor),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  AppCon.string.name,
                  style: TextStyle(color: AppCon.color.primaryColor),
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppCon.widget.editprofileTextField(),
                Text(
                  AppCon.string.password,
                  style: TextStyle(color: AppCon.color.primaryColor),
                ),
                AppCon.widget.editprofileTextField(
                    obscureText: true,
                    helpertext: AppCon.string.passwordhelper),
                SizedBox(
                  height: 10.h,
                ),
                Text(AppCon.string.passConform,
                    style: TextStyle(color: AppCon.color.primaryColor)),
                SizedBox(
                  height: 10.h,
                ),
                AppCon.widget.editprofileTextField(
                  obscureText: true,
                ),
                AppCon.widget.elevatedButtonEditProfile(
                    text: AppCon.string.updateProfile, onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
