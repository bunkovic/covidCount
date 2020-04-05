// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryDataCountryInfo _$CountryDataCountryInfoFromJson(
    Map<String, dynamic> json) {
  return CountryDataCountryInfo(
    json['_id'] as String,
    json['iso2'] as String,
    json['iso3'] as String,
    json['lat'] as int,
    json['long'] as int,
    json['flag'] as String,
  );
}

Map<String, dynamic> _$CountryDataCountryInfoToJson(
        CountryDataCountryInfo instance) =>
    <String, dynamic>{
      '_id': instance.nId,
      'iso2': instance.iso2,
      'iso3': instance.iso3,
      'lat': instance.lat,
      'long': instance.long,
      'flag': instance.flag,
    };
