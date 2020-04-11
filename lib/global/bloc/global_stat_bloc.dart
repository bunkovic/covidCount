import 'package:bloc/bloc.dart';
import 'package:covid_count/api/api.dart';
import 'package:covid_count/global/bloc/global_stat_state.dart';
import 'package:covid_count/service_locator.dart';

import 'global_stat_event.dart';

class GlobalStatBloc extends Bloc<GlobalStatEvent, GlobalStatState> {

  RestClient restClient = serviceLocator.get();


  @override
  GlobalStatState get initialState {
    return GlobalStatEmpty();
  }

  @override
  Stream<GlobalStatState> mapEventToState(GlobalStatEvent event) async* {
    //ignore the event
    yield* _getGlobalStats();
  }

  Stream<GlobalStatState> _getGlobalStats() async* {
    try {
      yield GlobalStatLoading();
      final globalStats = await restClient.fetchGlobalData();
      yield GlobalStatPopulated(globalStats);
    } catch (e) {
      yield GlobalStatError();
    }
  }
}
