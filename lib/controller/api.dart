import 'dart:convert';
import 'dart:async';
import 'package:fastapi_shop1/model/model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

Future<List<ShopModel>> fetchItem(http.Client client) async {
  final response = await client.get(Uri.parse('http://localhost:8000'));

  return compute(parseItem, response.body);
}

List<ShopModel> parseItem(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<ShopModel>((json) => ShopModel.fromJson(json)).toList();
}

Future<List<KomenModel>> fetchKomen(http.Client client) async {
  final response = await client.get(Uri.parse('http://localhost:8000'));

  return compute(parseKomen, response.body);
}

List<KomenModel> parseKomen(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<KomenModel>((json) => KomenModel.fromJson(json)).toList();
}
