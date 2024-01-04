import 'package:flutter/material.dart';

class NoImageIcon extends StatelessWidget {
  const NoImageIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: const Color(0xFF83C2D4),
        child: const Icon(Icons.person, size: 32.0, color: Color(0xFF56A2BA)),
      ),
    );
  }
}
