import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'HOME',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sort_outlined),
          label: 'COLLECTIONS',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline_rounded),
          label: 'MESSAGES',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: 'SEARCH',
        ),
      ],
      selectedItemColor: Colors.redAccent[400],
      unselectedItemColor: Colors.grey[500],
      currentIndex: selectedIndex,
      onTap: onTap,
    );
  }
}
