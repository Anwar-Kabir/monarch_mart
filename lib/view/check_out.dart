import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monarch_mart/common/config.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppCon.widget.customContainerButton(
                colorBorder: AppCon.color.primaryColor,
                colorBG: AppCon.color.scaffoldBGColor,
                onTap: () {},
                height: 60.0.h,
                width: double.infinity,
                child: Row(
                  children: [
                    Image.asset(AppCon.images.bkash),
                    Text(AppCon.string.checkOutwithbkash),
                  ],
                ),)
          ],
        ),
      ),
    );
  }
}
