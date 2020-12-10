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
        padding: EdgeInsets.all(16),
        children: List.generate(100, (index) {
          return Card(
              color: Colors.orange,
              child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Icon(
                        Icons.bookmark_border,
                        size: 50.0,
                      )),
                      Text('$index'),
                    ]),
              ));
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
