import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/fake_api_product_model.dart';

class FakeStoreProductController extends GetxController {
  Future<List<FakeApiProductModel>> fetchData() async {
    final response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      //print(jsonResponse);
      return jsonResponse
          .map((e) => FakeApiProductModel.fromJson(e))
          .toList();
    } else {
      throw Exception("Unexpected Error occured!");
    }
  }
}
