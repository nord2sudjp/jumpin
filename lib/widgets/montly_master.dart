import 'package:flutter/material.dart';

class MonthlyMasterW extends StatelessWidget {
  final int year;
  final int month;
  MonthlyMasterW({this.year, this.month});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.folder_open_outlined),
      title: Text(year.toString() + "年" + month.toString() + "月"),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
