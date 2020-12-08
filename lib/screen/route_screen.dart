import "package:flutter/material.dart";
import '../models/year_month.dart';
import '../widgets/montly_header.dart';
import '../models/monthly_master.dart';

class RouteScreen extends StatefulWidget {
  static const routeName = './route-view';

  @override
  _RouteScreenState createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen>
    with SingleTickerProviderStateMixin {
  final List<YearMonth> monthlymaster = MonthlyMaster.items;

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tab.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final _tab = <Tab>[
    Tab(text: 'マンスリー課題'),
    Tab(text: 'テープ課題'),
    Tab(text: '特別課題'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          color: Colors.white,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: TabBar(
                    labelColor: Colors.red,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    indicatorWeight: 4,
                    indicatorColor: Colors.red[600],
                    controller: _tabController,
                    tabs: _tab,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        MonthlyHeader(),
        TabPage(title: 'テープ課題'),
        TabPage(title: '特別課題'),
      ]),
    );
  }
}

class TabPage extends StatelessWidget {
  final IconData icon;
  final String title;

  const TabPage({Key key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Center(
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 64.0, color: textStyle.color),
          Text(title, style: textStyle),
        ],
      ),
    );
  }
}
