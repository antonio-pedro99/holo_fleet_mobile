import 'dart:convert';
import 'dart:io';
import 'package:holo_fleet_mobile/models/user_login.dart';
import 'package:holo_fleet_mobile/services/auth_response.dart';
import 'package:http/http.dart' as http;

class Auth {
  static Future<AuthResponse> loginWithEmailAndPassword(UserAuth user) async {
    AuthResponse _response = AuthResponse();
    var res = await http.post(Uri.parse("https://reqres.in/api/login"),
        headers: {
          HttpHeaders.acceptHeader: 'application/json',
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.varyHeader: "Accept",
          HttpHeaders.allowHeader: "POST, OPTION"
        },
        body: jsonEncode(user.toJson()));

    if (res.statusCode == 200) {
      _response.data = json.decode(res.body);
    } else if (res.statusCode == 400) {
      _response.error = json.decode(res.body);
    }
    return _response;
  }

  static Future<AuthResponse> registerWithEmail(UserAuth user) async {
    AuthResponse _response = AuthResponse();
    await http
        .post(Uri.parse("https://reqres.in/api/register"),
            headers: {
              HttpHeaders.acceptHeader: 'application/json',
              HttpHeaders.contentTypeHeader: 'application/json',
              HttpHeaders.varyHeader: "Accept",
              HttpHeaders.allowHeader: "POST, OPTION"
            },
            body: json.encode(user.toJson()))
        .then((value) {
      if (value.statusCode == 200) {
        _response.data = json.decode(value.body);
      } else if (value.statusCode == 400) {
        _response.error = json.decode(value.body);
      }
    });

    return _response;
  }
}
