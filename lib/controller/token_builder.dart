class TokenBuilder {
  TokenBuilder._();

  static final TokenBuilder _instance = TokenBuilder._();

  factory TokenBuilder() => _instance;

  static TokenBuilder get build => _instance;

  String? _token;

  String? get token => _token;

  void setToken(String token) {
    _token = token;
  }

  void removeToken() {
    _token = null;
  }
}
