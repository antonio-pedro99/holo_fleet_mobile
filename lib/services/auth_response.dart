class AuthResponse {
  Object? _data;
  Object? _error;

  bool get hasData => _data != null;
  bool get hasError => _error != null;

  Object? get getData => _data;
  Object? get getError => _error;

  set setData(Object? data) => _data = data;
  set setError(Object? error) => _error = error;
}
