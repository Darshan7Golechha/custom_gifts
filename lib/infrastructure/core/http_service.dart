import 'package:dio/dio.dart';

class HttpService {
  late Dio _dio;
  HttpService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'http://localhost:1337/api',
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      ),
    );
  }
  // @Throws()
  Future<Response> request({
    required String method,
    required String url,
    dynamic data = const {},
    ResponseType responseType = ResponseType.json,
    String cacheControl = '',
    Map<String, dynamic> headers = const <String, dynamic>{},
    ProgressCallback? onSendProgress,
  }) async {
    try {
      _dio.options.method = method;
      _dio.options.responseType = responseType;
      _dio.options.headers['Cache-Control'] = cacheControl;
      for (final headerInfo in headers.entries) {
        _dio.options.headers[headerInfo.key] = headerInfo.value;
      }
      return await _dio.request(url,
          data: data, onSendProgress: onSendProgress);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse && e.response != null) {
        return e.response!;
      }
      rethrow;
    }
  }

  Future<Response> get(String url) async {
    try {
      return await _dio.get(url);
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }
}
