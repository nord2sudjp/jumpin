import 'package:flutter/material.dart';
import './models/monthly_master.dart';
import 'widgets/montly_header.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const MaterialColor mcgpalette0 =
      MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
    50: Color(0xFFFBEDED),
    100: Color(0xFFF6D1D1),
    200: Color(0xFFF0B3B3),
    300: Color(0xFFE99494),
    400: Color(0xFFE57D7D),
    500: Color(_mcgpalette0PrimaryValue),
    600: Color(0xFFDC5E5E),
    700: Color(0xFFD85353),
    800: Color(0xFFD34949),
    900: Color(0xFFCB3838),
  });
  static const int _mcgpalette0PrimaryValue = 0xFFE06666;

  static const MaterialColor mcgpalette0Accent =
      MaterialColor(_mcgpalette0AccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_mcgpalette0AccentValue),
    400: Color(0xFFFFAFAF),
    700: Color(0xFFFF9696),
  });
  static const int _mcgpalette0AccentValue = 0xFFFFE2E2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jump In!',
      theme: ThemeData(
        primarySwatch: mcgpalette0,
        accentColor: mcgpalette0Accent,
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
                    0.1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("マンスリー課題",
                          style:
                              TextStyle(fontSize: 15, color: Colors.red[400])),
                      Text("テープ課題",
                          style:
                              TextStyle(fontSize: 15, color: Colors.red[400])),
                      Text("特別課題",
                          style:
                              TextStyle(fontSize: 15, color: Colors.red[400]))
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
        ));
  }
}
