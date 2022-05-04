class AuthResponse {
  Object? data;
  Object? error;

  bool get hasData => data != null;
  bool get hasError => error != null;

  Map<String, dynamic>? get getData => data as Map<String, dynamic>;
  Map<String, dynamic>? get getError => error as Map<String, dynamic>;
}
