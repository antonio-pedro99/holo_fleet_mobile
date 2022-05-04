import 'package:holo_fleet_mobile/services/auth_response.dart';
import 'package:holo_fleet_mobile/services/constants.dart';

//endpoisn

class Auth {
  final String _login = "$apiBase/api/login";
  final String _register = "$apiBase/api/register";




  Future<AuthResponse> loginWithEmailAndPassword() async {
    AuthResponse _response = AuthResponse();

    return _response;
  }

  Future<AuthResponse> registerWithEmail() async {
    AuthResponse _response = AuthResponse();

    return _response;
  }
}
