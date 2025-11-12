import 'dart:developer';

import 'package:fire_bse/Core/network/api_constants.dart';
import 'package:http/http.dart' as http;

class ApiClient {
   final http.Client ioClient = http.Client();
  Future<http.Response> Productget(endpoint) async {
    final url = "${ApiConstants.baseUrl}$endpoint";
    log(url);
    final response = await ioClient.get(Uri.parse(url));
    return response;
  }
}
