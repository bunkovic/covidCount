import 'package:covid_count/api/model/country/country_stat.dart';
import 'package:covid_count/api/model/global_stats_entity.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';


part 'api.g.dart';

@RestApi(baseUrl: "https://corona.lmao.ninja/v2")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/all")
  Future<GlobalStats> fetchGlobalData();

  @GET("/countries")
  Future<List<CountryStat>> getCountryData();

}


