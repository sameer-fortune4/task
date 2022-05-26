import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fortune_task/model/myModel.dart';
import 'package:http/http.dart' as http;

class Webservices {
  String url =
      'https://g54qw205uk.execute-api.eu-west-1.amazonaws.com/DEV/stub';
  MyData _myData = MyData();

  Future getData() async {
    Map data = {"angular_test": "angular-developer"};
    String postDataEncode = jsonEncode(data);

    http.Response response =
        await http.post(Uri.parse(url), body: postDataEncode);
    print(response.body);
  }
}
