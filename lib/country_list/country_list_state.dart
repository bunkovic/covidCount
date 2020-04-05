//import 'package:covid_count/api/model/country_data_entity.dart';

abstract class CountryListState {}

class CountryListLoading extends CountryListState {}

class CountryListError extends CountryListState {}

class CountryListSuccess extends CountryListState {
//  List<CountryData> countryData;

//  CountryListSuccess(this.countryData);
}
