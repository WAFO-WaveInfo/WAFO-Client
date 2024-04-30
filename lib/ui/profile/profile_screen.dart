import 'package:flutter/material.dart';
import 'package:wafo/ui/common/layout/default_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultLayout(
        child: Center(
          child: Text("프로필 화면입니다."),
        ),
      ),
    );
  }
}
