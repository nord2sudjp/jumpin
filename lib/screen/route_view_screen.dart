import 'package:flutter/material.dart';
import '../widgets/montly_header.dart';
import '../models/monthly_master.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/header_menu_route.dart';

class RouteViewScreen extends StatelessWidget {
  static const routeName = './route-view';

  final List<MonthlyMaster> monthlymaster = [
    MonthlyMaster(year: 2020, month: 8),
    MonthlyMaster(year: 2020, month: 7),
    MonthlyMaster(year: 2020, month: 6),
    MonthlyMaster(year: 2020, month: 5),
    MonthlyMaster(year: 2020, month: 4),
    MonthlyMaster(year: 2020, month: 8),
    MonthlyMaster(year: 2020, month: 7),
    MonthlyMaster(year: 2020, month: 6),
    MonthlyMaster(year: 2020, month: 5),
    MonthlyMaster(year: 2020, month: 4),
    MonthlyMaster(year: 2020, month: 8),
    MonthlyMaster(year: 2020, month: 7),
    MonthlyMaster(year: 2020, month: 6),
    MonthlyMaster(year: 2020, month: 5),
    MonthlyMaster(year: 2020, month: 4),
  ];

  @override
  Widget build(BuildContext context) {
    final MX = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: (MX.size.height - MX.padding.top) * 0.1,
            child: HeaderMenuRoute(),
          ),
          Container(
              height: (MX.size.height - MX.padding.top) * 0.9,
              child: MonthlyHeader(monthlymaster: monthlymaster)),
        ],
      ),
    );
  }
}
