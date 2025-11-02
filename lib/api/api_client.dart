/*
 * Created by Vinsensius Arko on 21/05/2025, 10:24
 * vinsensiusarka@gmail.com
 * Last modified 21/04/2025, 23:37
 * Copyright (c) 2025.
 * All rights reserved.
 */

import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiClient extends GetxService {
  static const String connectionIssue = 'Koneksi bermasalah, silahkan coba beberapa saat lagi.';
  final int timeoutInSeconds = 30;

  Future<Response> getPublic(String uri) async {
    try {
      http.Response response = await http.get(Uri.parse(uri)).timeout(Duration(seconds: timeoutInSeconds));
      return parseResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: connectionIssue);
    }
  }

  Future<Response> getExternal(String uri) async {
    try {
      http.Response response = await http.get(Uri.parse(uri)).timeout(Duration(seconds: timeoutInSeconds));
      return parseResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: connectionIssue);
    }
  }

  Future<Response> getPrivate(String uri, String token) async {
    try {
      http.Response response = await http.get(Uri.parse(uri), headers: {'Content-Type': 'application/json;', 'Authorization': 'Bearer $token'}).timeout(Duration(seconds: timeoutInSeconds));
      return parseResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: connectionIssue);
    }
  }

  Future<Response> postPublic(String uri, dynamic body, {Map<String, String>? headers}) async {
    try {
      http.Response response = await http.post(Uri.parse(uri), headers: {"Content-Type": "application/json"}, body: jsonEncode(body)).timeout(Duration(seconds: timeoutInSeconds));
      return parseResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: connectionIssue);
    }
  }

  Future<Response> postPrivate(String uri, dynamic body, String token) async {
    try {
      http.Response response = await http.post(Uri.parse(uri), body: jsonEncode(body), headers: {'Content-Type': 'application/json', 'Accept': 'application/json', 'Authorization': 'Bearer $token'}).timeout(Duration(seconds: timeoutInSeconds));
      return parseResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: connectionIssue);
    }
  }

  Future<Response> putPrivate(String uri, dynamic body, String token) async {
    try {
      http.Response response = await http.put(Uri.parse(uri), body: body, headers: {'Content-Type': 'application/x-www-form-urlencoded', 'Authorization': 'Bearer $token'}).timeout(Duration(seconds: timeoutInSeconds));
      return parseResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: connectionIssue);
    }
  }

  Future<Response> logout(String uri, String token) async {
    try {
      http.Response response = await http.post(Uri.parse(uri), headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer $token'}).timeout(Duration(seconds: timeoutInSeconds));
      return parseResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: connectionIssue);
    }
  }

  Response parseResponse(http.Response res, String uri) {
    dynamic body;
    try {
      body = jsonDecode(res.body);
    } catch (e) {
      e;
    }
    Response response = Response(body: body != '' ? body : res.body, bodyString: res.body.toString(), headers: res.headers, statusCode: res.statusCode, statusText: res.reasonPhrase);
    if (response.statusCode != 200 && response.body != null && response.body is! String) {
      if (response.body.toString().startsWith('{errors: [{code:')) {response = Response(statusCode: response.statusCode, body: response.body, statusText: 'error');
      } else if (response.body.toString().startsWith('{message')) {
        response = Response(statusCode: response.statusCode, body: response.body, statusText: response.body['message']);
      }
    }
    return response;
  }
}
