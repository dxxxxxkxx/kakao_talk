import 'package:flutter/material.dart';

import '../widgets/chats_icon.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _screens[_index]),
      bottomNavigationBar: SizedBox(
        height: 64.0,
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF181818),
          selectedItemColor: Colors.white,
          selectedFontSize: 10.0,
          unselectedItemColor: const Color(0xFF6A6B6D),
          unselectedFontSize: 10.0,
          currentIndex: _index,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 28.0),
              label: '친구',
            ),
            BottomNavigationBarItem(icon: ChatsIcon(), label: '채팅'),
            BottomNavigationBarItem(icon: OpenChatsIcon(), label: '오픈채팅'),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag, size: 28.0),
              label: '쇼핑',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz, size: 28.0),
              label: '더보기',
            )
          ],
        ),
      ),
    );
  }
}
