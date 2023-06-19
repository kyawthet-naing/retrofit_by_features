import 'package:dio/dio.dart';
import 'package:retrome/common/error_handler.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  ///headers
  Map<String, dynamic> headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Api-Key': '123123123',
  };

  final Dio _dio = Dio();

  Dio get dio => _dO();

  Dio _dO() {
    //BaseOptions
    BaseOptions options = BaseOptions();

    ///validate status
    options.validateStatus = (status) => status! <= 500;

    /// req header
    options.headers = headers;

    _dio.options = options;
    _dio.interceptors.addAll([
      AppInterceptors(),
      PrettyDioLogger(
        requestHeader: true,
        requestBody: false,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 100,
      ),
    ]);
    return _dio;
  }
}

class AppInterceptors extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    var token = "i am token";
    options.headers['Authorization'] = 'Bearer $token';
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // if (!response.data['status']) {
    //   showError('hrr hrr error');
    // } else {
    //   super.onResponse(response, handler);
    // }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    showError(err);
    super.onError(err, handler);
  }
}
