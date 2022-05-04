class AuthResponse {
  Object? data;
  Object? error;

  bool get hasData => data != null;
  bool get hasError => error != null;

  Object? get getData => data;
  Object? get getError => error;
}
