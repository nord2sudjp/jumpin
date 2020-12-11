import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jumpin/screen/menu_homepage_screen.dart';
import 'screen/tab_screen.dart';
import 'screen/monthly_routes_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
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
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Jump In!',
        theme: ThemeData(
          primarySwatch: MyApp.mcgpalette0,
          accentColor: MyApp.mcgpalette0Accent,
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
        initialRoute: '/',
        routes: {
          '/': (ctx) => TabScreen(),
          TabScreen.routeName: (ctr) => TabScreen(),
          MenuHomepageScreen.routeName: (ctr) => MenuHomepageScreen(),
          MonthlyRoutesOverviewScreen.routeName: (ctr) =>
              MonthlyRoutesOverviewScreen(),
        });
  }
}
