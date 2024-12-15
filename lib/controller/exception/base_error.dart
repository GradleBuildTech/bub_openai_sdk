import 'package:bub_openai_sdk/model/error/open_ai_error.dart';

abstract class BaseError {
  final OpenAiError? error;
  final int? code;

  BaseError({this.error, this.code});
}
