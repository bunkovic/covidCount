import 'package:covid_count/api/model/global_stats_entity.dart';
import 'package:covid_count/global/bloc/global_stat_bloc.dart';
import 'package:covid_count/global/global_stat_display.dart';
import 'package:covid_count/global/bloc/global_stat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalStatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.teal, Color(0xFAFAFA)],
        stops: [0.3, 0.0],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                "covid count",
                style: TextStyle(fontSize: 20, color: Colors.white70),
              ),
              SizedBox(height: 10),
              Text(
                "Global: ",
                style: TextStyle(fontSize: 30, color: Colors.white70),
              ),
              Text(
                "last updated: 1 hour ago",
                style: TextStyle(fontSize: 12, color: Colors.white30),
              ),
              _buildGlobalStatDisplay(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGlobalStatDisplay(BuildContext context) {
    return Flexible(
      child: BlocBuilder<GlobalStatBloc, GlobalStatState>(
        bloc: BlocProvider.of(context),
        builder: (BuildContext context, GlobalStatState state) {
          if (state is GlobalStatLoading) {
            return CircularProgressIndicator();
          }
          if (state is GlobalStatPopulated) {
            return GlobalStatDisplay(state.stats);
          }
          if (state is GlobalStatEmpty) {
            return Container(
              color: Colors.black,
            );
          }
          if (state is GlobalStatError) {
            return Container(
              color: Colors.red,
            );
          }

          return Container();
        },
      ),
    );
  }
}
