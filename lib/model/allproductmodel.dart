import 'dart:convert';

/// total : 100
/// skip : 0
/// limit : 30

/// API from -  https://dummyjson.com/products
/// API model creat by dart to json android studio plug in.

Future<Allproductmodel> allproductmodelFromJson(String str) async =>
    Allproductmodel.fromJson(json.decode(str));
String allproductmodelToJson(Allproductmodel data) =>
    json.encode(data.toJson());

class Allproductmodel {
  Allproductmodel({
    List<Products>? products,
    int? total,
    int? skip,
    int? limit,
  }) {
    _products = products;
    _total = total;
    _skip = skip;
    _limit = limit;
  }

  Allproductmodel.fromJson(dynamic json) {
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Products.fromJson(v));
      });
    }
    _total = json['total'];
    _skip = json['skip'];
    _limit = json['limit'];
  }
  List<Products>? _products;
  int? _total;
  int? _skip;
  int? _limit;
  Allproductmodel copyWith({
    List<Products>? products,
    int? total,
    int? skip,
    int? limit,
  }) =>
      Allproductmodel(
        products: products ?? _products,
        total: total ?? _total,
        skip: skip ?? _skip,
        limit: limit ?? _limit,
      );
  List<Products>? get products => _products;
  int? get total => _total;
  int? get skip => _skip;
  int? get limit => _limit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    map['total'] = _total;
    map['skip'] = _skip;
    map['limit'] = _limit;
    return map;
  }
}

/// id : 1
/// title : "iPhone 9"
/// description : "An apple mobile which is nothing like apple"
/// price : 549
/// discountPercentage : 12.96
/// rating : 4.69
/// stock : 94
/// brand : "Apple"
/// category : "smartphones"
/// thumbnail : "https://dummyjson.com/image/i/products/1/thumbnail.jpg"
/// images : ["https://dummyjson.com/image/i/products/1/1.jpg","https://dummyjson.com/image/i/products/1/2.jpg","https://dummyjson.com/image/i/products/1/3.jpg","https://dummyjson.com/image/i/products/1/4.jpg","https://dummyjson.com/image/i/products/1/thumbnail.jpg"]

Products productsFromJson(String str) => Products.fromJson(json.decode(str));
String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    int? id,
    String? title,
    String? description,
    int? price,
    double? discountPercentage,
    double? rating,
    int? stock,
    String? brand,
    String? category,
    String? thumbnail,
    List<String>? images,
  }) {
    _id = id;
    _title = title;
    _description = description;
    _price = price;
    _discountPercentage = discountPercentage;
    _rating = rating;
    _stock = stock;
    _brand = brand;
    _category = category;
    _thumbnail = thumbnail;
    _images = images;
  }

  Products.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _price = json['price'];
    _discountPercentage = json['discountPercentage'];
    _rating = json['rating'];
    _stock = json['stock'];
    _brand = json['brand'];
    _category = json['category'];
    _thumbnail = json['thumbnail'];
    _images = json['images'] != null ? json['images'].cast<String>() : [];
  }
  int? _id;
  String? _title;
  String? _description;
  int? _price;
  double? _discountPercentage;
  double? _rating;
  int? _stock;
  String? _brand;
  String? _category;
  String? _thumbnail;
  List<String>? _images;
  Products copyWith({
    int? id,
    String? title,
    String? description,
    int? price,
    double? discountPercentage,
    double? rating,
    int? stock,
    String? brand,
    String? category,
    String? thumbnail,
    List<String>? images,
  }) =>
      Products(
        id: id ?? _id,
        title: title ?? _title,
        description: description ?? _description,
        price: price ?? _price,
        discountPercentage: discountPercentage ?? _discountPercentage,
        rating: rating ?? _rating,
        stock: stock ?? _stock,
        brand: brand ?? _brand,
        category: category ?? _category,
        thumbnail: thumbnail ?? _thumbnail,
        images: images ?? _images,
      );
  int? get id => _id;
  String? get title => _title;
  String? get description => _description;
  int? get price => _price;
  double? get discountPercentage => _discountPercentage;
  double? get rating => _rating;
  int? get stock => _stock;
  String? get brand => _brand;
  String? get category => _category;
  String? get thumbnail => _thumbnail;
  List<String>? get images => _images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['description'] = _description;
    map['price'] = _price;
    map['discountPercentage'] = _discountPercentage;
    map['rating'] = _rating;
    map['stock'] = _stock;
    map['brand'] = _brand;
    map['category'] = _category;
    map['thumbnail'] = _thumbnail;
    map['images'] = _images;
    return map;
  }
}
