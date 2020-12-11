import 'package:flutter/material.dart';
import '../widgets/route_icon.dart';

class MonthlyRoutesOverviewScreen extends StatelessWidget {
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
      body: GridView(
        padding: EdgeInsets.all(16),
        children: List.generate(100, (index) {
          return RouteIcon(index, 4, 'Maka');
        }),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
      ),
    );
  }
}
