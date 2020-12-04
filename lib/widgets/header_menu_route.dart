import 'package:flutter/material.dart';

class HeaderMenuRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("マンスリー課題",
              style: TextStyle(fontSize: 15, color: Colors.red[400])),
          Text("テープ課題", style: TextStyle(fontSize: 15, color: Colors.red[400])),
          Text("特別課題", style: TextStyle(fontSize: 15, color: Colors.red[400])),
        ]);
  }
}
