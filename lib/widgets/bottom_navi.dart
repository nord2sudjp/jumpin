import 'package:flutter/material.dart';

class BottomNavi extends StatelessWidget {
  final int _selectPageIndex;

  BottomNavi(this._selectPageIndex);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: null,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.white,
      selectedItemColor: Theme.of(context).accentColor,
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
