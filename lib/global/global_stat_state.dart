
import 'package:covidcount/api/model/global_stats_entity.dart';

class GlobalStatState{}

class GlobalStatLoading extends GlobalStatState{}

class GlobalStatError extends GlobalStatState{}

class GlobalStatEmpty extends GlobalStatState{}

class GlobalStatPopulated extends GlobalStatState{
  final GlobalStats stats;

  GlobalStatPopulated(this.stats);

}


