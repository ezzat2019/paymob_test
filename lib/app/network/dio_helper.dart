import 'package:dio/dio.dart';
import 'package:paymob_test/app/constant.dart';
import 'package:dio_logger/dio_logger.dart' as log;
class DioHelper{
  static Dio? dio;

  DioHelper(){
    if (dio==null) {
      dio=Dio(BaseOptions(baseUrl:BASE_URL ));
      dio!.interceptors.add(log.dioLoggerInterceptor);
    }
  }

}