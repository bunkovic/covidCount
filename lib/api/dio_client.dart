import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  final Dio dio = Dio();

  DioClient(){
    dio.interceptors.add(PrettyDioLogger());
  }

}