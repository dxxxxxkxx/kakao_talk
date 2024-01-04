class Chat {
  List<String?> images;
  String title;
  String lastTalk;
  DateTime lastTalkDateTime;
  int peopleCount;
  int unreadCount;
  bool enabledNotif;
  bool isMyChat;

  Chat({
    required List<String?> images,
    required this.title,
    required this.lastTalk,
    required this.lastTalkDateTime,
    required this.peopleCount,
    this.unreadCount = 0,
    this.enabledNotif = true,
    this.isMyChat = false,
  }) : images = [] {
    if (lastTalkDateTime.isUtc) {
      lastTalkDateTime = lastTalkDateTime.toLocal();
    }
    if (lastTalkDateTime.isAfter(DateTime.now())) {
      throw Exception('lastTalkDateTime > now');
    }
    if (unreadCount < 0) {
      throw Exception('unreadCount < 0');
    }

    switch (peopleCount) {
      case < 1:
        throw Exception('peopleCount < 1');
      case <= 2:
        if (images.length != 1) {
          throw Exception('peopleCount <= 2, images.length != 1');
        }
      default: // > 2
        if (peopleCount - 1 != images.length) {
          throw Exception('peopleCount > 2, peopleCount - 1 != images.length');
        }
    }

    this.images =
        List.generate(images.length, (index) => images[index], growable: false);
  }

  bool get isGroupChat => peopleCount >= 3 ? true : false;
}
