import 'package:flutter/material.dart';

class RouteIcon extends StatelessWidget {
  final int route_id;
  final int grade;
  final String creator;

  RouteIcon(this.route_id, this.grade, this.creator);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.orange,
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(this.route_id.toString()),
                      //Expanded(child: Container(color: Colors.blue)),
                      Text(this.grade.toString() + "級")
                    ],
                  ),
                ),
                Expanded(
                    child: Icon(
                  Icons.bookmark_border,
                  size: 50.0,
                )),
                Text(creator),
              ]),
        ));
  }
}
