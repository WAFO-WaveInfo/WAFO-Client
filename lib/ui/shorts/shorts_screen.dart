import 'package:flutter/material.dart';
import 'package:wafo/ui/common/layout/default_layout.dart';

class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultLayout(
        child: Center(
          child: Text("숏츠 화면입니다."),
        ),
      ),
    );
  }
}
