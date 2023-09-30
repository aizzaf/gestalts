import 'dart:convert';

import 'package:http/http.dart' as http;

import 'bukus_model.dart';

class BukusRepository {
  Future<List<Bukus>> getBukus() async {
    final http.Response response = await http.get(
      Uri.parse('http://localhost:3000/bukus'),
      headers: {
        "Access-Control-Allow-Origin": "*", // Required for CORS support to work
        "Access-Control-Allow-Headers":
            "Origin, X-Requested-With, Content-Type, Accept",
        "Access-Control-Allow-Methods": "GET,PUT,PATCH,POST,DELETE"
      },
    );
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => Bukus.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<List<Bukus>> getBukusRange() async {
    final http.Response response = await http.get(
      Uri.parse('http://localhost:3000/bukus/range2000_6000'),
      headers: {
        "Access-Control-Allow-Origin": "*", // Required for CORS support to work
        "Access-Control-Allow-Headers":
            "Origin, X-Requested-With, Content-Type, Accept",
        "Access-Control-Allow-Methods": "GET,PUT,PATCH,POST,DELETE"
      },
    );
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => Bukus.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
