import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class Request {
  Dio dio = Dio();
  Request() {
    updateDioInterceptors();
  }

  void updateAuthorization(String accessToken) {
    dio.options.headers['authorization'] = accessToken;
  }

  void updateDioInterceptors() {
    dio.options = BaseOptions(
      baseUrl: APIUrl.baseUrl,
      receiveDataWhenStatusError: true,
      validateStatus: (value) {
        return value! <= 500;
      },
      headers: {
        'Accept': 'application/json',
      },
    );
    dio
      ..interceptors.add(
        LogInterceptor(
          requestBody: kDebugMode ? true : false,
          responseBody: kDebugMode ? true : false,
          requestHeader: kDebugMode ? true : false,
        ),
      )
      ..interceptors.add(
        InterceptorsWrapper(
          onError: (e, handler) {
            if (e.response?.statusCode == 402) {
              //logout user and go to login page
            }
            return handler.next(e);
          },
        ),
      );
  }

  void clearAuthorization() {
    dio.options.headers.remove('authorization');
  }

  // requests
  Future<Response> get(String path, {Object? data}) async {
    return await dio.get(path, data: data);
  }

  Future<Response> post(String path, {Object? data}) async {
    return await dio.post(path, data: data);
  }

  Future<Response> put(String path, {Object? data}) async {
    return await dio.put(path, data: data);
  }
}
