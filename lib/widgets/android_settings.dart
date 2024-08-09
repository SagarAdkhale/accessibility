import 'package:flutter/material.dart';

class AndroidSettings extends StatefulWidget {
  const AndroidSettings({super.key});

  @override
  State<AndroidSettings> createState() => _AndroidSettingsState();
}

class _AndroidSettingsState extends State<AndroidSettings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'To enable TalkBack on Android:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text('1. Open Settings'),
        Text('2. Navigate to Accessibility'),
        Text('3. Select TalkBack'),
        Text('4. Toggle TalkBack On'),
        SizedBox(height: 16),
        Text(
          'To enable VoiceOver on iOS:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
