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
  );
}

Map<String, dynamic> _$GlobalStatsToJson(GlobalStats instance) =>
    <String, dynamic>{
      'cases': instance.totalCases,
      'deaths': instance.deaths,
      'recovered': instance.recovered,
      'updated': instance.updatedAt,
      'active': instance.activeCases,
      'affectedCountries': instance.affectedCountries,
    };
