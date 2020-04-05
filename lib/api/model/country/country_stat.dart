import 'package:json_annotation/json_annotation.dart';
import 'country_info.dart';

part 'country_stat.g.dart';

@JsonSerializable()
class CountryStat {

	factory CountryStat.fromJson(Map<String, dynamic> json) => _$CountryStatFromJson(json);
	Map<String, dynamic> toJson( instance) => _$CountryStatToJson(this);
  final  String country;
  final CountryInfoBean countryInfo;
  final int cases;
  final int todayCases;
  final int deaths;
  final int todayDeaths;
  final int recovered;
  final int active;
  final int critical;
  final double casesPerOneMillion;
  final double deathsPerOneMillion;
  final int updated;

  CountryStat(this.country, this.countryInfo, this.cases, this.todayCases,
      this.deaths, this.todayDeaths, this.recovered, this.active, this.critical,
      this.casesPerOneMillion, this.deathsPerOneMillion, this.updated);

}
