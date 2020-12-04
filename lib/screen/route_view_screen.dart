import 'package:flutter/material.dart';
import '../widgets/montly_header.dart';
import '../models/monthly_master.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

import '../widgets/header_menu_route.dart';
import '../widgets/bottom_navi.dart';

class RouteViewScreen extends StatelessWidget {
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
              child: HeaderMenuRoute(),
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
      bottomNavigationBar: BottomNavi(0),
    );
  }
}
