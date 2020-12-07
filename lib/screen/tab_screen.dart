import 'package:flutter/material.dart';
import 'package:jumpin/screen/homepage_screen.dart';
import 'package:jumpin/screen/route_view_screen.dart';
import 'route_screen.dart';
import '../models/monthly_master.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class TabScreen extends StatefulWidget {
  static const routeName = './monthly-view';

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<MonthlyMaster> monthlymaster = [
    MonthlyMaster(year: 2020, month: 8),
    MonthlyMaster(year: 2020, month: 7),
    MonthlyMaster(year: 2020, month: 6),
    MonthlyMaster(year: 2020, month: 5),
    MonthlyMaster(year: 2020, month: 4),
    MonthlyMaster(year: 2020, month: 8),
    MonthlyMaster(year: 2020, month: 7),
    MonthlyMaster(year: 2020, month: 6),
    MonthlyMaster(year: 2020, month: 5),
    MonthlyMaster(year: 2020, month: 4),
    MonthlyMaster(year: 2020, month: 8),
    MonthlyMaster(year: 2020, month: 7),
    MonthlyMaster(year: 2020, month: 6),
    MonthlyMaster(year: 2020, month: 5),
    MonthlyMaster(year: 2020, month: 4),
  ];
  int _selectPageIndex = 0;

  List<Map<String, Object>> _pages;

  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  void initState() {
    _pages = [
      {'page': RouteScreen(), 'title': '課題'},
      {'page': HomepageScreen(), 'title': 'ホームページ'},
      {'page': RouteScreen(), 'title': '課題'},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final MX = MediaQuery.of(context);
    final isLandscape = MX.orientation == Orientation.landscape;
    final PreferredSizeWidget appBar = Platform.isIOS
        ? CupertinoNavigationBar()
        : AppBar(
            title: Text(
              _pages[_selectPageIndex]['title'],
              textAlign: TextAlign.center,
            ),
            actions: <Widget>[
                SizedBox(
                  height: 60,
                  width: 60,
                  child: IconButton(
                      padding: new EdgeInsets.all(0.0),
                      icon: Icon(Icons.person, size: 52.0),
                      onPressed: null),
                )
              ]);
    return Scaffold(
      appBar: appBar,
      body: _pages[_selectPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
