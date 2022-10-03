import 'package:flutter/material.dart';
import 'package:monarch_mart/common/config.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          AppCon.widget.inAppBackButton(text: "Purchase History"),
        ],
      )),
    );
  }
}
