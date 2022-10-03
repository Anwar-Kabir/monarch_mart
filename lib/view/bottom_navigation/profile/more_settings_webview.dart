import 'dart:io';
import 'package:flutter/material.dart';
import 'package:monarch_mart/common/config.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProfileWebView extends StatefulWidget {
  const ProfileWebView({super.key});

  @override
  State<ProfileWebView> createState() => _ProfileWebViewState();
}

dynamic position = 1;

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
        body: Column(
          children: [
            AppCon.widget.inAppBackButton(
              text: "abc",
            ),
            Expanded(
              child: IndexedStack(index: position, children: <Widget>[
                WebView(
                  initialUrl: 'https://google.com',
                  javascriptMode: JavascriptMode.unrestricted,
                  onPageStarted: (value) {
                    setState(() {
                      position = 1;
                    });
                  },
                  onPageFinished: (value) {
                    setState(() {
                      position = 0;
                    });
                  },
                ),
                const Center(child: CircularProgressIndicator()),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
