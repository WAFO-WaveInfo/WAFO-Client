import 'package:flutter/material.dart';
import 'package:wafo/ui/common/layout/default_layout.dart';

class FolderScreen extends StatelessWidget {
  const FolderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultLayout(
        child: Center(
          child: Text("폴더 화면입니다."),
        ),
      ),
    );
  }
}
