import 'package:flutter/material.dart';
import 'package:jumpin/screen/menu_homepage_screen.dart';
import 'menu_route_screen.dart';
import '../models/year_month.dart';
import '../widgets/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class TabScreen extends StatefulWidget {
  static const routeName = './monthly-view';

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  //final List<YearMonth> monthlymaster = MonthlyMaster.items;
  int _selectPageIndex = 0;

  List<Map<String, Object>> _pages;

  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  void initState() {
    _pages = [
      {'page': MenuRouteScreen(), 'title': '課題'},
      {'page': MenuHomepageScreen(), 'title': 'ホームページ'},
      {'page': MenuRouteScreen(), 'title': '課題'},
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
            centerTitle: true,
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
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
