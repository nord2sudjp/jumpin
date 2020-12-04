import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

import '../widgets/bottom_navi.dart';

class HomepageScreen extends StatelessWidget {
  static const routeName = './homepage';

  @override
  Widget build(BuildContext context) {
    final MX = MediaQuery.of(context);
    final isLandscape = MX.orientation == Orientation.landscape;
    final PreferredSizeWidget appBar = Platform.isIOS
        ? CupertinoNavigationBar()
        : AppBar(
            title: Text(
              "ホームページ",
              textAlign: TextAlign.center,
            ),
            actions: <Widget>[Text("ブラウザで開く")]);
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: (MX.size.height -
                      appBar.preferredSize.height -
                      MX.padding.top) *
                  1.0,
              child: Text("ホームページ"),
            )
          ],
        ),
      ),
    );
  }
}
