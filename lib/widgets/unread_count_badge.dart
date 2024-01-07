import 'package:flutter/material.dart';

class UnreadCountBadge extends StatelessWidget {
  final int unreadCount;
  final bool isTotalUnreadCount;
  final bool isGroupChat;
  final double padding;

  const UnreadCountBadge({
    super.key,
    required this.unreadCount,
    this.isTotalUnreadCount = false,
    required this.isGroupChat,
    this.padding = 6.0,
  });

  @override
  Widget build(BuildContext context) {
    if (unreadCount > 0) {
      final StringBuffer buffer = StringBuffer('');

      if (isGroupChat && !isTotalUnreadCount) {
        buffer.write('@ ');
      }
      buffer.write(unreadCount < 1000 ? '$unreadCount' : '999+');

      return Badge(
        padding: EdgeInsets.symmetric(horizontal: padding),
        backgroundColor: Colors.deepOrangeAccent,
        label: FittedBox(child: Text(buffer.toString())),
        textStyle: const TextStyle(height: 1.0),
      );
    }

    return Container();
  }
}
