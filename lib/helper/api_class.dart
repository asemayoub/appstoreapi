import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  // Get Api Method

  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Erorr In Status code Is : ${response.statusCode}');
    }
  }
}
