import 'package:flutter/material.dart';

class IOSSettings extends StatefulWidget {
  const IOSSettings({super.key});

  @override
  State<IOSSettings> createState() => _IOSSettingsState();
}

class _IOSSettingsState extends State<IOSSettings> {
  @override
  Widget build(BuildContext context) {
    return  const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
       Text(
              'To enable VoiceOver on iOS:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('1. Open Settings'),
            Text('2. Navigate to Accessibility'),
            Text('3. Select VoiceOver'),
            Text('4. Toggle VoiceOver On'),
      ],
    );
  }
}
