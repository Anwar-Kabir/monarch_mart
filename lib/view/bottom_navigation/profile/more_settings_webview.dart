import 'dart:io';

import 'package:flutter/material.dart';
import 'package:monarch_mart/common/config.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProfileWebView extends StatefulWidget {
  const ProfileWebView({super.key});

  @override
  State<ProfileWebView> createState() => _ProfileWebViewState();
}

class _ProfileWebViewState extends State<ProfileWebView> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Hello")),
        body: WebView(
          initialUrl: AppCon.string.url,
        ),
      ),
    );
  }
}
