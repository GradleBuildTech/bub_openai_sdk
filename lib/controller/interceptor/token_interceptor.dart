import 'package:bub_openai_sdk/controller/token_builder.dart';
import 'package:dio/dio.dart';

class TokenInterceptor implements Interceptor {
  @override
  // ignore: deprecated_member_use
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String accessToken = TokenBuilder.build.token ?? "";

    options.headers["Authorization"] = "Bearer $accessToken";
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }
}
