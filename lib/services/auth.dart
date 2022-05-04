import 'dart:convert';

import 'package:holo_fleet_mobile/services/auth_response.dart';
import 'package:holo_fleet_mobile/services/constants.dart';
import 'package:http/http.dart' as http;

class Auth {
  static Future<AuthResponse> loginWithEmailAndPassword(
      String email, String password) async {
    AuthResponse _response = AuthResponse();
    var res = await http.post(Uri.parse(loginUrl),
        body: jsonEncode({"email": email, "password": password}));

    if (res.statusCode == 200) {
      _response.data = json.decode(res.body);
    } else {
      _response.error = json.decode(res.body);
    }
    return _response;
  }

  static Future<AuthResponse> registerWithEmail(
      String email, String password) async {
    AuthResponse _response = AuthResponse();
    var res = await http.post(Uri.parse(registerUrl),
        body: json.encode({"email": email, "password": password}));

    if (res.statusCode == 200) {
      _response.data = json.decode(res.body);
    } else {
      _response.error = json.decode(res.body);
    }
    return _response;
  }
}
