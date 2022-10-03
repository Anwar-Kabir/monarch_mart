import 'package:flutter/material.dart';
import 'package:monarch_mart/common/config.dart';

class CardMonarch extends StatefulWidget {
  const CardMonarch({super.key});

  @override
  State<CardMonarch> createState() => _CardMonarchState();
}

class _CardMonarchState extends State<CardMonarch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: AppCon.widget.addToCardProductListView()),
    );
  }
}
