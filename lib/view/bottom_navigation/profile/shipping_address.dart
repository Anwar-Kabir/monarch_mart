import 'package:flutter/material.dart';
import 'package:monarch_mart/common/config.dart';

class ShippingAdress extends StatefulWidget {
  const ShippingAdress({super.key});

  @override
  State<ShippingAdress> createState() => _ShippingAdressState();
}

class _ShippingAdressState extends State<ShippingAdress> {
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
            AppCon.widget.addshippingAdress(onTap: () {
              setState(() {
                AppCon.widget.loginIDandCreateAccountTextField(hint: "hhhhhh");
              });
            }),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(AppCon.string.noadress)),
          ],
        ),
      )),
    );
  }
}
