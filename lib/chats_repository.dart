import 'chat.dart';

class ChatsRepository {
  List<Chat> getChats() {
    final DateTime now = DateTime.now();

    return [
      Chat(
        images: [
          'https://upload.wikimedia.org/wikipedia/commons/7/72/180417_%EB%B3%B4%EC%95%84_01.png'
        ],
        title: '권보아',
        lastTalk: '사랑해❤️',
        lastTalkDateTime:
            DateTime(now.year, now.month, now.day, now.hour, now.minute),
        peopleCount: 2,
        unreadCount: 5,
      ),
      Chat(
        images: [
          'https://fandomship.com/data/file/monsta_x/b6fba0497616b9b04e0ac143a23b0c95_Sx4sM3gv_cefb3a8b7aa4946cf822a9ec810da51713f25621.jpeg'
        ],
        title: '채형원',
        lastTalk: 'ㅋㅋㅋㅋㅋㅋㅋ',
        lastTalkDateTime: DateTime(now.year, now.month, now.day, 0, 0),
        peopleCount: 2,
      ),
      Chat(
        images: [
          'https://static.wikia.nocookie.net/arendelle/images/2/2c/Elsa4.jpg/revision/latest?cb=20151103112320&path-prefix=ko',
          null,
          'http://file3.instiz.net/data/cached_img/upload/2020/08/06/3/3fba0968871864546834c55d57b100b6.jpg'
        ],
        title: '오준석, 문 에디 주현, 임성수',
        lastTalk: '넵',
        lastTalkDateTime: DateTime(now.year, now.month, now.day - 1, 21, 3),
        peopleCount: 4,
        unreadCount: 1234,
        enabledNotif: false,
      ),
      Chat(
        images: [null],
        title: 'dxxxxxkxx',
        lastTalk: '생분해성 섬유유연제',
        lastTalkDateTime:
            DateTime(now.year, now.month, now.day - 2, now.hour, now.minute),
        peopleCount: 1,
        isMyChat: true,
      ),
      Chat(
        images: [
          'https://i.pinimg.com/564x/bd/4d/02/bd4d02bd1b6fc3c393812116e6a057a4.jpg',
          'https://i.pinimg.com/564x/aa/48/66/aa4866f6a202f06469147f0ea5b2289c.jpg'
        ],
        title: '잠깐만',
        lastTalk: '그럴 수 있겠다',
        lastTalkDateTime: DateTime(now.year, now.month, now.day - 10, 12, 26),
        peopleCount: 3,
        unreadCount: 13,
      ),
      Chat(
        images: [
          'https://i.pinimg.com/564x/3e/50/cb/3e50cb94de0bfc7074f0e5a5f333e11d.jpg',
          'https://i.pinimg.com/564x/63/a5/a5/63a5a5da5f6564f180af849d3db446da.jpg',
          'https://i.namu.wiki/i/ZUrEBCVWrZwEIQ6KjWWNvsfSGvVgntvCWGIpdZmrtZaWjG3pBaF16sesKxsU2LtQfJFqtHaoXyGSoB2Kbj2OFQ.webp',
          'https://i.pinimg.com/564x/5b/81/ed/5b81ed2691a77faec1bdc7e8ba9cac3d.jpg',
          null,
          null,
          'https://i.pinimg.com/564x/f3/0f/f1/f30ff140554b5fbebf3e52705d4694db.jpg',
          null,
          null,
          null,
          null
        ],
        title: 'Hogwarts 3학년',
        lastTalk:
            '30일 2교시 \'마법의 역사\' 수업이 \'변신술\' 수업으로 대체되었습니다. 자세한 사항은 각 기숙사 반장에게 문의 바랍니다.',
        lastTalkDateTime: DateTime(now.year - 1, now.month, 29, 8, 50),
        peopleCount: 12,
      ),
      Chat(
        images: ['https://www.wwfkorea.or.kr/img/newbird/main/logo.png'],
        title: '세계자연기금WWF-Korea',
        lastTalk: '''김도현 후원자님
      
      10월 판다메일에서는 WWF가 각국의 금융 당국에 강력한 정책을 촉구하는 내용으로 시작합니다.
      WWF (세계자연기금)는 각국의 중앙은행과 금융감독기관이 기후변화와 생물 다양성 위기 대응에 보다 강력한 조치를 취할 것을 촉구하는 성명서를 발표했습니다.''',
        lastTalkDateTime: DateTime(now.year - 2, 10, 18, 13, 54),
        peopleCount: 1,
      )
    ];
  }
}
