// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryStat _$CountryStatFromJson(Map<String, dynamic> json) {
  return CountryStat(
    json['country'] as String,
    json['countryInfo'] == null
        ? null
        : CountryInfoBean.fromJson(json['countryInfo'] as Map<String, dynamic>),
    json['cases'] as int,
    json['todayCases'] as int,
    json['deaths'] as int,
    json['todayDeaths'] as int,
    json['recovered'] as int,
    json['active'] as int,
    json['critical'] as int,
    json['casesPerOneMillion'] as int,
    json['deathsPerOneMillion'] as int,
    json['updated'] as int,
  );
}

Map<String, dynamic> _$CountryStatToJson(CountryStat instance) =>
    <String, dynamic>{
      'country': instance.country,
      'countryInfo': instance.countryInfo,
      'cases': instance.cases,
      'todayCases': instance.todayCases,
      'deaths': instance.deaths,
      'todayDeaths': instance.todayDeaths,
      'recovered': instance.recovered,
      'active': instance.active,
      'critical': instance.critical,
      'casesPerOneMillion': instance.casesPerOneMillion,
      'deathsPerOneMillion': instance.deathsPerOneMillion,
      'updated': instance.updated,
    };
