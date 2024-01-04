import 'package:flutter/material.dart';

class ChatsIcon extends StatelessWidget {
  const ChatsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Icon(null, size: 28.0),
        Icon(Icons.chat_bubble, size: 28.0),
      ],
    );
  }
}
