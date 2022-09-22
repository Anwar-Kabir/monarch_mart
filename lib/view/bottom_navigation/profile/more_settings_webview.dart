import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileWebView extends StatefulWidget {
  const ProfileWebView({super.key});

  @override
  State<ProfileWebView> createState() => _ProfileWebViewState();
}

class _ProfileWebViewState extends State<ProfileWebView> {
  final Uri toLaunch =
      Uri.parse('https://pub.dev/packages/url_launcher/example');

  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(
          headers: <String, String>{'my_header_key': 'my_header_value'}),
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
    _launchInWebViewOrVC(toLaunch);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: const Text("Hello")), body: Container()),
    );
  }
}
