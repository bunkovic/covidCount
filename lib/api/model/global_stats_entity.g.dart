// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_stats_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GlobalStats _$GlobalStatsFromJson(Map<String, dynamic> json) {
  return GlobalStats(
    json['cases'] as int,
    json['deaths'] as int,
    json['recovered'] as int,
    json['updated'] as int,
    json['active'] as int,
    json['affectedCountries'] as int,
    json['todayCases'] as int,
    json['todayDeaths'],
  );
}

Map<String, dynamic> _$GlobalStatsToJson(GlobalStats instance) =>
    <String, dynamic>{
      'cases': instance.totalCases,
      'todayCases': instance.todayCases,
      'deaths': instance.deaths,
      'todayDeaths': instance.todayDeaths,
      'recovered': instance.recovered,
      'updated': instance.updatedAt,
      'active': instance.activeCases,
      'affectedCountries': instance.affectedCountries,
    };
