import 'package:flutter/material.dart';

import '../colors.dart';
import '../widgets/chats_icon.dart';
import '../widgets/list_view_widget.dart';
import '../widgets/open_chats_icon.dart';
import 'chats_screen.dart';
import 'etc_screen.dart';
import 'friends_screen.dart';
import 'open_chats_screen.dart';
import 'shopping_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _screens = [
    const FriendsScreen(),
    const ChatsScreen(),
    const OpenChatsScreen(),
    const ShoppingScreen(),
    const EtcScreen()
  ];
  int _index = 1;
  int totalUnreadCount = 0;

  @override
  Widget build(BuildContext context) {
    setState(() {
      totalUnreadCount = ListViewWidget.getTotalUnreadCount();
    });

    return Scaffold(
      body: SafeArea(child: _screens[_index]),
      bottomNavigationBar: SizedBox(
        height: 66.0,
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: darkGrey,
          selectedItemColor: Colors.white,
          selectedFontSize: 10.0,
          unselectedItemColor: lightGrey,
          unselectedFontSize: 10.0,
          iconSize: 28.0,
          currentIndex: _index,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '친구',
            ),
            BottomNavigationBarItem(
              icon: ChatsIcon(totalUnreadCount: totalUnreadCount),
              label: '채팅',
            ),
            const BottomNavigationBarItem(
              icon: OpenChatsIcon(),
              label: '오픈채팅',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: '쇼핑',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: '더보기',
            )
          ],
        ),
      ),
    );
  }
}
