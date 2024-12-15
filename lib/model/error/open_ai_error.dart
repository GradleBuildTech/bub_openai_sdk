class OpenAiError {
  ErrorMessage? error;

  OpenAiError({
    this.error,
  });

  factory OpenAiError.fromJson(Map<String, dynamic> json) => OpenAiError(
        error: ErrorMessage.fromJson(json["error"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error!.toJson(),
      };
}

class ErrorMessage {
  String? message;
  String? type;
  String? param;
  String? code;

  ErrorMessage({
    this.message,
    this.type,
    this.param,
    this.code,
  });

  factory ErrorMessage.fromJson(Map<String, dynamic> json) => ErrorMessage(
        message: json["message"],
        type: json["type"],
        param: json["param"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "type": type,
        "param": param,
        "code": code,
      };
}
