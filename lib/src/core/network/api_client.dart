import 'package:dio/dio.dart';

///
class ApiClient {
  ///
  factory ApiClient() => _instance;
  ApiClient._init() {
    initDio();
  }

  ///
  void initDio() {
    dio
      ..interceptors.clear()
      ..interceptors.add(
        InterceptorsWrapper(
          onError: onError,
          onRequest: onRequest,
          onResponse: onResponse,
        ),
      );
  }

  ///
  late final Dio dio = Dio(
    BaseOptions(
      // baseUrl: 'http://localhost:8080',
      baseUrl: 'https://asatic.liara.run',
      validateStatus: (status) => status! < 500,
      sendTimeout: const Duration(seconds: 20),
    ),
  );

  static final ApiClient _instance = ApiClient._init();

  ///
  void setToken(String accessToken) {
    dio.options.headers['Authorization'] = 'Bearer $accessToken';
  }

  ///
  void onError(
    DioException error,
    ErrorInterceptorHandler handler,
  ) {
    handler.next(error);
  }

  ///
  void onRequest(
    RequestOptions requestOptions,
    RequestInterceptorHandler handler,
  ) {
    // log(request: requestOptions);
    handler.next(requestOptions);
  }

  ///
  Future<void> onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    //! and check isLogin
    if ((response.statusCode ?? 0) == 401) {}
    handler.next(response);
  }

  ///
  static Future<Response<dynamic>> retry(
    Dio dio,
    RequestOptions requestOptions,
  ) async {
    ///
    final options = Options(
      method: requestOptions.method,
      headers: dio.options.headers,
    );
    return dio.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
