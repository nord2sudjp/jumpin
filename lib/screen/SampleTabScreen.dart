import "package:flutter/material.dart";

class SampleTabScreen extends StatefulWidget {
  @override
  _SampleTabScreenState createState() => _SampleTabScreenState();
}

class _SampleTabScreenState extends State<SampleTabScreen>
    with SingleTickerProviderStateMixin {
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
    Tab(text: 'Car', icon: Icon(Icons.directions_car)),
    Tab(text: 'Bicycle', icon: Icon(Icons.directions_bike)),
    Tab(text: 'Boat', icon: Icon(Icons.directions_boat)),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: TabBar(
                  controller: _tabController,
                  tabs: _tab,
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        TabPage(title: 'Car', icon: Icons.directions_car),
        TabPage(title: 'Bicycle', icon: Icons.directions_bike),
        TabPage(title: 'Boat', icon: Icons.directions_boat),
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
