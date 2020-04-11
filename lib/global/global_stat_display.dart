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
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: StatDisplayCard("Total cases", stats.totalCases)),
              Expanded(child: StatDisplayCard("Active cases", stats.activeCases)),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: StatDisplayCard("Deaths", stats.deaths)),
              Expanded(child: StatDisplayCard("Recovered", stats.recovered)),
            ],
          )
        ],
      ),
    );
  }
}
