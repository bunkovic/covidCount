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
      height: 270,
      child: GridView.count(
        childAspectRatio: 6/4,
        padding: EdgeInsets.all(24.0),
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 16,
        crossAxisCount: 2,
        children: <Widget>[
          StatDisplayCard("CONFIRMED", stats.totalCases, Colors.red, change: stats.todayCases,),
          StatDisplayCard("ACTIVE", stats.activeCases, Colors.blue),
          StatDisplayCard("RECOVERED", stats.recovered, Colors.green,),
          StatDisplayCard("DECEASED", stats.deaths, Colors.black54, change: stats.todayDeaths),
        ],
      ),
    );
  }
}
