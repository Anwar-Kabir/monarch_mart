import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:monarch_mart/model/fake_api_model.dart';

class GetAPI {
  Future<Fakeapi> getProductsfakeApi() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    var data = jsonDecode(response.body);

    //print(data.toString());

    if (response.statusCode == 200) {
      return Fakeapi.fromJson(data);
    } else {
      return Fakeapi.fromJson(data);
    }
  }

  Future<Fakeapi> fetchfakeAPI() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    /// json decode to object
    //var data = jsonDecode(response.body);

    // Appropriate action depending upon the
    // server response
    if (response.statusCode == 200) {
      return Fakeapi.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load API');
    }
  }
}
