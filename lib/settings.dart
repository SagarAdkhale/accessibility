import 'dart:io';

import 'package:accessibility/widgets/android_settings.dart';
import 'package:accessibility/widgets/ios_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isAndroid = false;

  @override
  void initState() {
    setState(() {
      isAndroid = Platform.isAndroid;
    });
    super.initState();
  }

  void openAccessibilitySettings() async {
    String url =
        isAndroid ? 'android.settings.ACCESSIBILITY_SETTINGS' : 'app-settings:';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            isAndroid ? const AndroidSettings() : const IOSSettings(),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                 OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Back"),
                ),
                const SizedBox(width: 10,),
                OutlinedButton(
                  onPressed: openAccessibilitySettings,
                  child: const Text("Open Settings"),
                ),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}
