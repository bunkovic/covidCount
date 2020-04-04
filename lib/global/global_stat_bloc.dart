import 'package:bloc/bloc.dart';
import 'package:covidcount/api/api.dart';
import 'package:covidcount/global/global_stat_state.dart';
import 'package:covidcount/service_locator.dart';

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
    yield* getGlobalStats();
  }

  Stream<GlobalStatState> getGlobalStats() async* {
    yield GlobalStatLoading();
    try {
      final globalStats = await restClient.getGlobalStats();
      yield GlobalStatPopulated(globalStats);
    } catch (e) {
      yield GlobalStatError();
    }
  }
}
