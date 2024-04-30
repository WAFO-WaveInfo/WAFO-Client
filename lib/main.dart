import 'package:flutter/material.dart';
import 'package:wafo/ui/common/layout/root_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Wafo',
      home: RootTab(),
    );
  }
}
