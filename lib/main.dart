import 'package:flutter/material.dart';
import './models/monthly_master.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<MonthlyMaster> monthlymaser = [
    MonthlyMaster(year: 2020, month: 8),
    MonthlyMaster(year: 2020, month: 7),
    MonthlyMaster(year: 2020, month: 6),
    MonthlyMaster(year: 2020, month: 5),
    MonthlyMaster(year: 2020, month: 4),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("課題"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Colors.red,
              child: Text('List of txt'),
            )
          ],
        ));
  }
}
