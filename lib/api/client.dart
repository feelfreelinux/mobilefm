import 'dart:async';
import 'package:built_value/serializer.dart';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;
import 'dart:io';

/*
 * Handles request signing, retrying, deserializing, saving auth tokens,
 * logging in and all sort of things 
 */
class ApiClient extends http.BaseClient {
  final http.Client _inner = http.Client();

  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    http.StreamedResponse response = await _inner.send(request);
    return response;
  }

  void close() => _inner.close();

  Future<dynamic> request(
    String method, {
    Map<String, String> params: const {},
  }) async {
    http.Response response;
    params["api_key"] = "<YOUR LASTFM API KEY>";
    params["format"] = "json";
    var urlParams = "";
    params.forEach((key, value) => urlParams += "&$key=$value");
    response = await get(
        "http://ws.audioscrobbler.com/2.0/?method=$method$urlParams");
    return json.decode(response.body);
  }
}
