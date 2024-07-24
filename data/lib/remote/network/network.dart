import 'dart:convert';

import 'package:http/http.dart' as http;


class Network
{

  http.Client client = http.Client();

  Network();

  Future<http.Response> get(Uri url) async {
    try {
      final response = await client.get(url);
      return response;
    } catch (e) {
      throw Exception('Failed to load data');
    }
  }

  Future<http.Response> post(Uri url, {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    try {
      final response = await client.post(url, headers: headers, body: body, encoding: encoding);
      return response;
    } catch (e) {
      throw Exception('Failed to post data');
    }
  }

}
