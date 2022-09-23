import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:monarch_mart/common/config.dart';
import 'package:nb_utils/nb_utils.dart';

class Network {
  static String noInternetMessage = "Check your connection!";

  static getRequest(String endPoint) async {
    if (await isNetworkAvailable()) {
      Response response;

      response = await get(
        Uri.parse(AppCon.api.product),
      );

      return response;
    } else {
      throw noInternetMessage;
    }
  }

  static handleResponse(Response response) async {
    if (!await isNetworkAvailable()) {
      toast('No network available');
    } else if (response.statusCode >= 200 && response.statusCode <= 210) {
      debugPrint('SuccessCode: ${response.statusCode}');
      debugPrint('SuccessResponse: ${response.body}');

      if (response.body.isNotEmpty) {
        return json.decode(response.body);
      } else {
        return response.body;
      }
    } else {
      debugPrint('ErrorCode: ${response.statusCode}');
      debugPrint('ErrorResponse: ${response.body}');

      toast('Something went wrong!', bgColor: Colors.red);
    }
  }
}
