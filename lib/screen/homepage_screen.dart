import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomepageScreen extends StatelessWidget {
  static const routeName = './homepage';

  @override
  Widget build(BuildContext context) {
    final MX = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: (MX.size.height - MX.padding.top) * 1.0,
            child: Text("ホームページ"),
          )
        ],
      ),
    );
  }
}
