import 'package:flutter/material.dart';

class OpenChatsIcon extends StatelessWidget {
  const OpenChatsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(null, size: 28.0),
        Positioned(
          top: 0.0,
          right: 0.0,
          child: Transform.flip(
            flipX: true,
            child: const Icon(Icons.chat_bubble, size: 24.0),
          ),
        ),
        const Positioned(
          bottom: 2.0,
          left: 2.0,
          child: Icon(Icons.chat_bubble, size: 20.0, color: Color(0xFF181818)),
        ),
        const Positioned(
          bottom: 0.0,
          left: 0.0,
          child: Icon(Icons.chat_bubble, size: 20.0),
        )
      ],
    );
  }
}
