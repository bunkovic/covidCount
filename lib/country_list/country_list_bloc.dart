
import 'package:bloc/bloc.dart';
import 'package:covid_count/api/api.dart';
import 'package:covid_count/country_list/country_list_event.dart';
import 'package:covid_count/country_list/country_list_state.dart';
import 'package:covid_count/service_locator.dart';

class CountryListBloc extends Bloc<CountryListEvent, CountryListState>{

  RestClient _restClient = serviceLocator.get();

  @override
  CountryListState get initialState => CountryListSuccess();

  @override
  Stream<CountryListState> mapEventToState(CountryListEvent event) async*{
    if (event is LoadCountryList) {
      yield* _getAll();
    }
  }

  Stream<CountryListState> _getAll() async* {
    yield CountryListLoading();
    try {
      var countryData = await _restClient.getCountryData();
      yield CountryListSuccess();
    } catch (e){
      yield CountryListError();
    }
  }
}