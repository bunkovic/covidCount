import 'package:json_annotation/json_annotation.dart';

part 'country_info.g.dart';

@JsonSerializable()
class CountryInfoBean {

	factory CountryInfoBean.fromJson(Map<String, dynamic> json) => _$CountryInfoBeanFromJson(json);
	Map<String, dynamic> toJson( instance) => _$CountryInfoBeanToJson(this);
  @JsonKey(name: "_id")
  final int id;
  @JsonKey(name: "iso2")
  final String iso2;
  @JsonKey(name: "iso3")
  final String iso3;
  @JsonKey(name: "country")
  final String country;
  @JsonKey(name: "lat")
  final double lat;
  @JsonKey(name: "long")
  final double long;
  @JsonKey(name: "flag")
  final String flag;

  CountryInfoBean(this.id, this.iso2, this.iso3, this.country, this.lat,
      this.long, this.flag);


}
