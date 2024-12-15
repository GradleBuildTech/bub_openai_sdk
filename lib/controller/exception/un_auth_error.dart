import 'package:bub_openai_sdk/controller/exception/base_error.dart';

class UnAuthError extends BaseError {
  @override
  String toString() {
    return 'UnAuthError{error: $error, code: $code}';
  }
}
