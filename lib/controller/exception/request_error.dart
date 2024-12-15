import 'package:bub_openai_sdk/controller/exception/base_error.dart';

class RequestError extends BaseError {
  @override
  String toString() {
    return 'RequestError{error: $error, code: $code}';
  }
}
