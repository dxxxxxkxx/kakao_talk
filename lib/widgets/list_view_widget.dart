import 'package:flutter/material.dart';

import '../chat.dart';
import '../chats_repository.dart';
import 'chat_image_widget.dart';
import 'contents_widget.dart';
import 'info_widget.dart';

class ListViewWidget extends StatelessWidget {
  static final List<Chat> _chats = ChatsRepository().getChats();

  const ListViewWidget({super.key});

  static int getTotalUnreadCount() =>
      _chats.fold(0, (sum, chat) => sum + chat.unreadCount);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {},
        behavior: HitTestBehavior.opaque,
        child: Row(
          children: [
            SizedBox(
              width: 62.0,
              child: ChatImageWidget(images: _chats[index].images),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: ContentsWidget(
                title: _chats[index].title,
                lastTalk: _chats[index].lastTalk,
                peopleCount: _chats[index].peopleCount,
                enabledNotif: _chats[index].enabledNotif,
                isMyChat: _chats[index].isMyChat,
              ),
            ),
            const SizedBox(width: 10.0),
            SizedBox(
              width: 66.0,
              child: InfoWidget(
                lastTalkDateTime: _chats[index].lastTalkDateTime,
                isGroupChat: _chats[index].isGroupChat,
                unreadCount: _chats[index].unreadCount,
              ),
            )
          ],
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 28.0),
      itemCount: _chats.length,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
