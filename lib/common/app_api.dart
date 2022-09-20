const _baseApi = "https://dummyjson.com";

String formatUrl(endpoint) {
  return _baseApi + endpoint;
}

class AppApiEndPoints {
  final baseurl = _baseApi;

  /// product API, parameters: NA, Method: get
  final product = formatUrl("/products");

  /// Single Product API, Method: get, Paramaters: NA
  final singleProduct = formatUrl("/products/1");

  /// product in card API, Method: get, PArametrs: NA
  final card = formatUrl("/carts");

  /// product of categories  API, Method: get, PArametrs: NA
  final categories = formatUrl("/products/categories");

  /// user API, Method: get,
  final userAPi = formatUrl("/users");
}
