import 'package:flutter/material.dart';
import 'package:monarch_mart/view/authentication/login.dart';

class CardMonarch extends StatefulWidget {
  const CardMonarch({super.key});

  @override
  State<CardMonarch> createState() => _CardMonarchState();
}

class _CardMonarchState extends State<CardMonarch> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Login(),
      ),
    );
  }
}
