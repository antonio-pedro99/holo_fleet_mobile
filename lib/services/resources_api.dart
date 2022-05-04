import 'dart:convert';
import 'dart:io';
import 'package:holo_fleet_mobile/models/resource.dart';
import 'package:http/http.dart' as http;

class ResourcesAPI {
  static Future<List<Resource>> getResourceList(String token) async {
    List<Resource> _resources = [];
    var res = await http.get(
      Uri.parse("https://reqres.in/api/unknown"),
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.varyHeader: "Accept",
        HttpHeaders.allowHeader: "POST, OPTION"
      },
    );

    if (res.statusCode == 200) {
      var jsonList = jsonDecode(res.body);
      for (var resource in jsonList["data"]) {
        _resources.add(Resource.fromJson(resource));
      }
    } else {
      print(res.body);
    }
    return _resources;
  }
}
