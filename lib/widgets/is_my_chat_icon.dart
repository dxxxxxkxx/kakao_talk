import 'package:flutter/material.dart';

class IsMyChatIcon extends StatelessWidget {
  const IsMyChatIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 10.0,
      backgroundColor: Color(0xFF6A6B6D),
      foregroundColor: Colors.white,
      child: Text(
        '나',
        style: TextStyle(
          fontSize: 10.0,
          height: 1.2,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
