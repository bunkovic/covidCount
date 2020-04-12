import 'package:json_annotation/json_annotation.dart';

part 'global_stats_entity.g.dart';

@JsonSerializable()
class GlobalStats {
  @JsonKey(name: "cases")
  final int totalCases;
  final int todayCases;
  final int deaths;
  final todayDeaths;
  final int recovered;
  @JsonKey(name: "updated")
  final int updatedAt;
  @JsonKey(name: "active")
  final int activeCases;
  final int affectedCountries;

  GlobalStats(this.totalCases, this.deaths, this.recovered, this.updatedAt,
      this.activeCases, this.affectedCountries, this.todayCases, this.todayDeaths);

  factory GlobalStats.fromJson(Map<String, dynamic> json) =>
      _$GlobalStatsFromJson(json);

  Map<String, dynamic> toJson() => _$GlobalStatsToJson(this);
}
