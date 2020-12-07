import 'package:flutter/material.dart';

class MonthlyRoutes extends StatelessWidget {
  static final routeName = "routeheader";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "課題一覧",
          textAlign: TextAlign.center,
        ),
      ),
      body: Text("課題"),
    );
  }
}
