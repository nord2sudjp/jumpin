import 'package:flutter/material.dart';
import '../widgets/montly_header.dart';
import '../models/monthly_master.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class MonthlyViewScreen extends StatelessWidget {
  static const routeName = './monthly-view';

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

  @override
  Widget build(BuildContext context) {
    int _selectPageIndex = 0;

    final MX = MediaQuery.of(context);
    final isLandscape = MX.orientation == Orientation.landscape;
    final PreferredSizeWidget appBar = Platform.isIOS
        ? CupertinoNavigationBar()
        : AppBar(
            title: Text(
              "課題",
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: (MX.size.height -
                      appBar.preferredSize.height -
                      MX.padding.top) *
                  0.1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("マンスリー課題",
                        style: TextStyle(fontSize: 15, color: Colors.red[400])),
                    Text("テープ課題",
                        style: TextStyle(fontSize: 15, color: Colors.red[400])),
                    Text("特別課題",
                        style: TextStyle(fontSize: 15, color: Colors.red[400]))
                  ]),
            ),
            Container(
                height: (MX.size.height -
                        appBar.preferredSize.height -
                        MX.padding.top) *
                    0.9,
                child: MonthlyHeader(monthlymaster: monthlymaster)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
