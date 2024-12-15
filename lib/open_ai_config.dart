class OpenAiConfig {
  OpenAiConfig._();

  static final OpenAiConfig _instance = OpenAiConfig._();

  factory OpenAiConfig() => _instance;

  static OpenAiConfig get build => _instance;
}
