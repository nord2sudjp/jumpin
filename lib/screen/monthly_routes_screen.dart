import 'package:flutter/material.dart';

class MonthlyRoutesScreen extends StatelessWidget {
  int year;
  int month;

  static final routeName = "monthlyroutes";
  @override
  Widget build(BuildContext context) {
    Map arg = ModalRoute.of(context).settings.arguments;
    print(arg['year'] + arg['month']);
    this.year = arg['year'];
    this.month = arg['month'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "課題一覧",
          textAlign: TextAlign.center,
        ),
      ),
      body: Text("課題" + this.year.toString() + "/" + this.month.toString()),
    );
  }
}
