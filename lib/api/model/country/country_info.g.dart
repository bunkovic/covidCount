// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryInfoBean _$CountryInfoBeanFromJson(Map<String, dynamic> json) {
  return CountryInfoBean(
    json['_id'] as int,
    json['iso2'] as String,
    json['iso3'] as String,
    json['country'] as String,
    (json['lat'] as num)?.toDouble(),
    (json['long'] as num)?.toDouble(),
    json['flag'] as String,
  );
}

Map<String, dynamic> _$CountryInfoBeanToJson(CountryInfoBean instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'iso2': instance.iso2,
      'iso3': instance.iso3,
      'country': instance.country,
      'lat': instance.lat,
      'long': instance.long,
      'flag': instance.flag,
    };
