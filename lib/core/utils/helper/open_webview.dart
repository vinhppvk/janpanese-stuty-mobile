import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<void> openWebview(String url) async {
  try {
    await launchUrlString(url, mode: LaunchMode.inAppWebView);
  } on PlatformException catch (e) {
    debugPrint(e.toString());
  }
}
