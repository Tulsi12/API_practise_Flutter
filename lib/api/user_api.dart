import 'package:batch28_api_starter/api/http_services.dart';
import 'package:batch28_api_starter/model/user_model.dart';
import 'package:batch28_api_starter/utils/url.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class UserApi {
  Future<bool> registerUser(User user) async {
    bool isSignup = false;
    Response response;
    var url = baseUrl + registerUrl;
    var dio = HttpServices().getDioInstance();
    try {
      response = await dio.post(url, data: user.toJson());
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return isSignup;
  }
}
