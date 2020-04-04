import 'package:covidcount/api/model/global_stats_entity.dart';
import 'package:flutter/material.dart';

class GlobalStatDisplay extends StatelessWidget {
  final GlobalStats stats;

  GlobalStatDisplay(this.stats);

  @override
  Widget build(BuildContext context) {
    var headerTextStyle = TextStyle(
      fontSize: 20,

    );

    var caseTextStyle = TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold
    );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Total cases:",
            style: headerTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${stats.totalCases}", style: caseTextStyle),
          ),
          Text("Active cases:", style: headerTextStyle),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${stats.activeCases}", style: caseTextStyle),
          ),
          Text("Deaths:", style: headerTextStyle),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${stats.deaths}", style: caseTextStyle),
          ),
          Text("Recovered:", style: headerTextStyle),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${stats.recovered}", style: caseTextStyle),
          ),
        ],
      ),
    );
  }
}
