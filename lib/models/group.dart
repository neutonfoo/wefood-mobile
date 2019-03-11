import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class Group {
  final String _API_URL = 'https://salhacks.com/wefood_new/api.php';
  final String groupCode;

  Group({@required this.groupCode});

  void getGroup() {
    final Map<String, String> parameters = {
      'action': 'join',
      'group_code': groupCode,
    };

//    Future<http.Response> response = http.post(_API_URL, body: parameters);
//    if(response.statusCode)

//    var response = await http.get(url);
//    if (response.statusCode == 200) {
//      var jsonResponse = convert.jsonDecode(response.body);
//      var itemCount = jsonResponse['totalItems'];
//      print("Number of books about http: $itemCount.");
//    } else {
//      print("Request failed with status: ${response.statusCode}.");
//    }

    http.post(_API_URL, body: parameters).then((http.Response response) {
//      final List<dynamic> responseData = json.decode(response.body);
      final Map<String, dynamic> responseData = json.decode(response.body);
      print(responseData);
    });
  }
}
