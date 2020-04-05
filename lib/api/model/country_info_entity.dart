import 'package:json_annotation/json_annotation.dart';


part 'country_info_entity.g.dart';

@JsonSerializable()
class CountryDataCountryInfo  {
  @JsonKey(name: "_id")
  String nId;
  String iso2;
  String iso3;
  int lat;
  int long;
  String flag;

  CountryDataCountryInfo(this.nId, this.iso2, this.iso3, this.lat, this.long,
      this.flag);
  factory CountryDataCountryInfo.fromJson(Map<String, dynamic> json) => _$CountryDataCountryInfoFromJson(json);
  Map<String, dynamic> toJson( instance) => _$CountryDataCountryInfoToJson(this);

}
