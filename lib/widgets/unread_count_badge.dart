import 'package:flutter/material.dart';

class UnreadCountBadge extends StatelessWidget {
  final int unreadCount;
  final bool isGroupChat;
  final double padding;
  final double largeSize;

  const UnreadCountBadge({
    super.key,
    required this.unreadCount,
    required this.isGroupChat,
    this.padding = 2.0,
    this.largeSize = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    if (unreadCount > 0) {
      final StringBuffer buffer = StringBuffer('');

      if (isGroupChat) {
        buffer.write('@ ');
      }
      buffer.write(unreadCount < 1000 ? '$unreadCount' : '999+');

      return Badge(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        backgroundColor: Colors.deepOrangeAccent,
        label: Text(buffer.toString()),
        textStyle: const TextStyle(height: 1.0),
      );
    }

    return Container();
  }
}
