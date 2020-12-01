import 'package:flutter/material.dart';

class MonthlyHeader extends StatelessWidget {
  final int year;
  final int month;
  MonthlyHeader({this.year, this.month});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
      elevation: 1,
      child: ListTile(
        leading: Icon(Icons.folder_open_outlined),
        title: Text(year.toString() + "年" + month.toString() + "月"),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
