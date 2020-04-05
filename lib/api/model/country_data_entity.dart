import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:covid_count/api/model/country_info_entity.dart';

part 'country_data_entity.g.dart';

@JsonSerializable()
class CountryData {

	String country;
	CountryDataCountryInfo countryInfo;
	int cases;
	int todayCases;
	int deaths;
	int todayDeaths;
	int recovered;
	int active;
	int critical;
	int casesPerOneMillion;
	double deathsPerOneMillion;
	int updated;

	CountryData(this.country, this.countryInfo, this.cases, this.todayCases,
			this.deaths, this.todayDeaths, this.recovered, this.active, this.critical,
			this.casesPerOneMillion, this.deathsPerOneMillion, this.updated);


	factory CountryData.fromJson(Map<String, dynamic> json) => _$CountryDataFromJson(json);
	Map<String, dynamic> toJson( instance) => _$CountryDataToJson(this);
}

