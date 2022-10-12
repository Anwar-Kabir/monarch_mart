import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:monarch_mart/common/config.dart';

class ShippingAdress extends StatefulWidget {
  const ShippingAdress({super.key});

  @override
  State<ShippingAdress> createState() => _ShippingAdressState();
}

class _ShippingAdressState extends State<ShippingAdress> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppCon.widget.inAppBackButton(text: "Addresses of User"),
            AppCon.widget.customContainerButtonIconAndBackgroudColor(
                colorBorder: Colors.transparent,
                color: AppCon.color.primaryColor,
                height: 38.0.h,
                width: double.infinity,
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onTap: () {
                  Get.defaultDialog(
                      // title: AppCon.string.logout,
                      // titleStyle: TextStyle(color: AppCon.color.primaryColor),
                      //content: Text(AppCon.string.logoutAlart),
                      content: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(AppCon.string.nameAdress),
                            AppCon.widget.loginIDandCreateAccountTextField(
                              hint: "Enter Name",
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.text,
                            ),
                            Text(AppCon.string.dateOfBirth),
                            //AppCon.widget.flagTextFiedLogin(),
                            Text(AppCon.string.gender),
                            AppCon.widget.genderDropDown(
                                value: selectedValue,
                                onChangedd: (value) {
                                  setState(() {
                                    selectedValue = value;
                                  });
                                }),

                            Text(AppCon.string.address),
                            AppCon.widget.loginIDandCreateAccountTextField(
                              hint: "Enter Address",
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.text,
                            ),
                            Text(AppCon.string.postal),
                            AppCon.widget.loginIDandCreateAccountTextField(
                                hint: "Enter Postal Code",
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.number,
                                maxLength: 4),
                            Text(AppCon.string.city),
                            //AppCon.widget.flagTextFiedLogin(),
                            Text(AppCon.string.phoneadress),
                            AppCon.widget.loginIDandCreateAccountTextField(
                              hint: "Enter Phone",
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.text,
                            ),
                          ]),
                      confirm: AppCon.widget.confirmBtn(
                        actionName: "Save",
                        backgroundColor: AppCon.color.addressSavebutton,
                      ),
                      cancel: AppCon.widget.confirmBtn(
                          actionName: "Cancel",
                          backgroundColor: AppCon.color.addressCancelbutton),
                      barrierDismissible: false);
                }),
            AppCon.widget.verticalSpace(height: 20.h),
            Align(
                alignment: Alignment.center,
                child: Text(AppCon.string.noadress)),
          ],
        ),
      )),
    );
  }
}
