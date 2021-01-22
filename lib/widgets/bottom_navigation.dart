import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _selectPage,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.black,
      selectedItemColor: Theme.of(context).primaryColor,
      currentIndex: _selectPageIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.timeline),
          label: '課題',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'ホームページ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt),
          label: 'Instagram',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.email),
          label: '通知',
        ),
      ],
    );
  }
}
