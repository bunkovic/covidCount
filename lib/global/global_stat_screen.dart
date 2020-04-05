import 'package:covid_count/api/model/global_stats_entity.dart';
import 'package:covid_count/global/global_stat_bloc.dart';
import 'package:covid_count/global/global_stat_display.dart';
import 'package:covid_count/global/global_stat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalStatScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Center(
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
