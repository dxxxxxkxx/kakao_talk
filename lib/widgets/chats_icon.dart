import 'package:flutter/material.dart';

import 'unread_count_badge.dart';

class ChatsIcon extends StatelessWidget {
  final int totalUnreadCount;

  const ChatsIcon({super.key, required this.totalUnreadCount});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Icon(Icons.chat_bubble, size: 28.0),
        Positioned(
          top: 0.0,
          right: -8.0,
          child: SizedBox(
            height: 12.0,
            child: FittedBox(
              child: UnreadCountBadge(
                unreadCount: totalUnreadCount,
                isGroupChat: false,
                padding: 4.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}
