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
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
