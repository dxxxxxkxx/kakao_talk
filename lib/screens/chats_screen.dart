import 'package:flutter/material.dart';

import '../widgets/list_view_widget.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  List<Widget> _buildActions() {
    return [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search, size: 28.0, color: Colors.white),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.add_comment_outlined,
          size: 28.0,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.settings_outlined,
          size: 28.0,
          color: Colors.white,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 66.0,
        backgroundColor: Colors.black,
        title: const Text('채팅'),
        titleTextStyle: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        actions: _buildActions(),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: FractionallySizedBox(
              widthFactor: 1.0,
              child: Image.network(
                'https://shop.peopet.co.kr/data/editor/goods/100/2022/03/9014_c1077e9beaf8dab278ba412e2b74d6ce1641144.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          ListViewWidget()
        ],
      ),
    );
  }
}
