import 'dart:convert';

import 'package:http/http.dart' as http;

class AppString {
  static String baseAPIstring = "http://localhost:9999/api/";
  static Future<String> getAPIUrl() async {
    final response =
        await http.get(Uri.parse('https://nemvieta.vercel.app/api/proxy'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body)['data'];
      baseAPIstring = data['name'];
      return baseAPIstring;
    } else {
      throw Exception('Failed to get API');
    }
  }
}
