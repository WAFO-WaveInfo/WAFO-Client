import 'package:flutter/material.dart';
import 'package:wafo/ui/setting/setting_screen.dart';

void navigateToSettingScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => const SettingScreen(),
    ),
  );
}
