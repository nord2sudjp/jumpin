import 'package:flutter/material.dart';

class MonthlyRouteScreen extends StatelessWidget {
  static final routeName = "monthlyroute";
  int id;
  int year;
  int month;

  @override
  Widget build(BuildContext context) {
    Map arg = ModalRoute.of(context).settings.arguments;
    print('monthlyroutescreen');
    print(arg['year']);
    this.id = arg['id'];
    this.year = arg['year'];
    this.month = arg['month'];
    return Text("Route");
  }
}
