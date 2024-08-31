import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

Future<String> loadJsonFromAssets(String assetsPath) async {
  return await rootBundle.loadString(assetsPath);
}

Future<Map<String, dynamic>> loadAndDecodeJson(String assetsPath) async {
  String jsonData = await loadJsonFromAssets(assetsPath);
  return jsonDecode(jsonData);
}
