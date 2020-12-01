import 'package:flutter/material.dart';
import './models/monthly_master.dart';
import 'widgets/montly_header.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jump In!',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        fontFamily: 'QuickSand',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              button: TextStyle(color: Colors.white),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(fontFamily: 'OpenSans', fontSize: 20),
              ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
                      0.95,
                  child: MonthlyHeader(monthlymaster: monthlymaster)),
            ],
          ),
        ));
  }
}
