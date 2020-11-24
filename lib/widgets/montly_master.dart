import 'package:flutter/material.dart';

class MonthlyMasterW extends StatelessWidget {
  final int year;
  final int month;
  MonthlyMasterW({this.year, this.month});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.folder),
        Text(year.toString() + "年" + month.toString() + "月"),
        Text(">"),
      ],
    );
  }
}
