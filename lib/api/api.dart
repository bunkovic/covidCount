import 'package:covid_count/api/model/country_data_entity.dart';
import 'package:covid_count/api/model/global_stats_entity.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';


part 'api.g.dart';

@RestApi(baseUrl: "https://corona.lmao.ninja/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/all")
  Future<GlobalStats> getGlobalStats();

  @GET("/countries")
  Future<List<CountryData>> getCountryData();

}


