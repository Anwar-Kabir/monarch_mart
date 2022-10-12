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
                AppCon.widget
                    .inAppBackButton(text: AppCon.string.editprofiletitle),
                AppCon.widget.verticalSpace(height: 150.h),
                const Divider(
                  color: Colors.black45,
                  thickness: 1.0,
                ),
                AppCon.widget.verticalSpace(height: 10.h),
                Text(
                  AppCon.string.basicInformation,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                AppCon.widget.verticalSpace(height: 15.h),
                Text(
                  AppCon.string.name,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                AppCon.widget.verticalSpace(height: 10.h),
                AppCon.widget.editprofileTextField(),
                Text(
                  AppCon.string.password,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                AppCon.widget.editprofileTextField(
                    obscureText: true,
                    helpertext: AppCon.string.passwordhelper),
                AppCon.widget.verticalSpace(height: 10.h),
                Text(AppCon.string.passConform,
                    style: Theme.of(context).textTheme.bodySmall),
                AppCon.widget.verticalSpace(height: 10.h),
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
