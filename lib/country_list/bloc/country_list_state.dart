import 'package:covid_count/api/model/country/country_stat.dart';

abstract class CountryListState {}

class CountryListLoading extends CountryListState {}

class CountryListError extends CountryListState {}

class CountryListSuccess extends CountryListState {
  final List<CountryStat> countryData;

  CountryListSuccess(this.countryData);
}
