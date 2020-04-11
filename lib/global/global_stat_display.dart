import 'package:covid_count/api/model/global_stats_entity.dart';
import 'package:covid_count/global/stat_display_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalStatDisplay extends StatelessWidget {
  final GlobalStats stats;

  GlobalStatDisplay(this.stats);

  @override
  Widget build(BuildContext context) {
    return Container(
//      child: Column(
//        children: <Widget>[
//          Row(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Expanded(child:
//              Expanded(child: StatDisplayCard("Active cases", stats.activeCases)),
//            ],
//          ),
//          Row(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Expanded(child: StatDisplayCard("Deaths", stats.deaths)),
//              Expanded(child: StatDisplayCard("Recovered", stats.recovered)),
//            ],
//          )
//        ],
//      ),
      child: GridView.count(
        padding: EdgeInsets.all(32.0),
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 16,
        crossAxisCount: 2,
        children: <Widget>[
          StatDisplayCard("CONFIRMED", stats.totalCases, Colors.red),
          StatDisplayCard("ACTIVE", stats.activeCases, Colors.blue),
          StatDisplayCard("RECOVERED", stats.recovered, Colors.green),
          StatDisplayCard("DECEASED", stats.deaths, Colors.black54),
        ],
      ),
    );
  }
}
