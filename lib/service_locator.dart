import 'package:covidcount/api/api.dart';
import 'package:dio/dio.dart';
import 'package:covidcount/api/dio_client.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

void initServiceLocator(){
  serviceLocator.registerLazySingleton<Dio>(() => DioClient().dio);
  serviceLocator.registerLazySingleton<RestClient>(() => RestClient(serviceLocator.get()));
}

