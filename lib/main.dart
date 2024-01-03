import 'package:flutter/material.dart';

import 'main_screen.dart';

void main() {
  runApp(const KakaoTalk());
}

class KakaoTalk extends StatelessWidget {
  const KakaoTalk({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KakaoTalk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
