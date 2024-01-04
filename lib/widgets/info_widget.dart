import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'unread_count_badge.dart';

class InfoWidget extends StatelessWidget {
  final DateTime lastTalkDateTime;
  final bool isGroupChat;
  final int unreadCount;

  const InfoWidget({
    super.key,
    required this.lastTalkDateTime,
    required this.isGroupChat,
    required this.unreadCount,
  });

  String _formatDateTime() {
    final DateTime now = DateTime.now();

    if (!lastTalkDateTime.isBefore(DateTime(now.year, 1, 1))) {
      if (!lastTalkDateTime.isBefore(DateTime(now.year, now.month, now.day))) {
        String dateTime = DateFormat('a h:mm').format(lastTalkDateTime);

        if (dateTime.contains('AM')) {
          dateTime = dateTime.replaceFirst('AM', '오전');
        } else if (dateTime.contains('PM')) {
          dateTime = dateTime.replaceFirst('PM', '오후');
        }

        return dateTime; // today
      } else if (!lastTalkDateTime
          .isBefore(DateTime(now.year, now.month, now.day - 1))) {
        return '어제'; // yesterday
      }

      // this year ~ 2 days ago
      return DateFormat('M월 d일').format(lastTalkDateTime);
    }

    // ~ last year
    return DateFormat('yyyy.MM.dd').format(lastTalkDateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          _formatDateTime(),
          style: const TextStyle(fontSize: 12.0, color: Color(0xFF6A6B6D)),
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          height: 20.0,
          child: UnreadCountBadge(
            unreadCount: unreadCount,
            isGroupChat: isGroupChat,
          ),
        )
      ],
    );
  }
}
