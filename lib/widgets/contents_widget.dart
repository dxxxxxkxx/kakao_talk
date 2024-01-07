import 'package:flutter/material.dart';

import '../colors.dart';
import 'is_my_chat_icon.dart';

class ContentsWidget extends StatelessWidget {
  final String title;
  final String lastTalk;
  final int peopleCount;
  final bool enabledNotif;
  final bool isMyChat;

  const ContentsWidget({
    super.key,
    required this.title,
    required this.lastTalk,
    required this.peopleCount,
    required this.enabledNotif,
    required this.isMyChat,
  });

  List<Widget> _buildWidgets() {
    final List<Widget> widgets = [];
    if (isMyChat) {
      widgets.add(const IsMyChatIcon());
      widgets.add(const SizedBox(width: 8.0));
    }

    widgets.add(
      Flexible(
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style:
              const TextStyle(fontSize: 16.0, color: Colors.white, height: 1.0),
        ),
      ),
    );

    if (peopleCount >= 3) {
      widgets.add(const SizedBox(width: 8.0));
      widgets.add(
        Text(
          '$peopleCount',
          style: const TextStyle(fontSize: 16.0, color: lightGrey),
        ),
      );
    }

    if (!enabledNotif) {
      widgets.add(const SizedBox(width: 8.0));
      widgets.add(
        const Icon(
          Icons.notifications_off,
          size: 16.0,
          color: lightGrey,
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: _buildWidgets()),
        const SizedBox(height: 4.0),
        Text(
          lastTalk,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: lightGrey),
        )
      ],
    );
  }
}
