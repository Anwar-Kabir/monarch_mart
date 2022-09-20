import 'dart:convert';

/// id : 1
/// title : "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops"
/// price : 109.95
/// description : "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday"
/// category : "men's clothing"
/// image : "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"
/// rating : {"rate":3.9,"count":120}

/// ====== API from https://fakestoreapi.com/products
/// ====== API model creat by json to dart android studoi plug in.

Fakeapi fakeapiFromJson(String str) => Fakeapi.fromJson(json.decode(str));
String fakeapiToJson(Fakeapi data) => json.encode(data.toJson());

class Fakeapi {
  Fakeapi({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    Rating? rating,
  }) {
    _id = id;
    _title = title;
    _price = price;
    _description = description;
    _category = category;
    _image = image;
    _rating = rating;
  }

  Fakeapi.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _price = json['price'];
    _description = json['description'];
    _category = json['category'];
    _image = json['image'];
    _rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
  }
  int? _id;
  String? _title;
  double? _price;
  String? _description;
  String? _category;
  String? _image;
  Rating? _rating;
  Fakeapi copyWith({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    Rating? rating,
  }) =>
      Fakeapi(
        id: id ?? _id,
        title: title ?? _title,
        price: price ?? _price,
        description: description ?? _description,
        category: category ?? _category,
        image: image ?? _image,
        rating: rating ?? _rating,
      );
  int? get id => _id;
  String? get title => _title;
  double? get price => _price;
  String? get description => _description;
  String? get category => _category;
  String? get image => _image;
  Rating? get rating => _rating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['price'] = _price;
    map['description'] = _description;
    map['category'] = _category;
    map['image'] = _image;
    if (_rating != null) {
      map['rating'] = _rating?.toJson();
    }
    return map;
  }
}

/// rate : 3.9
/// count : 120

Rating ratingFromJson(String str) => Rating.fromJson(json.decode(str));
String ratingToJson(Rating data) => json.encode(data.toJson());

class Rating {
  Rating({
    double? rate,
    int? count,
  }) {
    _rate = rate;
    _count = count;
  }

  Rating.fromJson(dynamic json) {
    _rate = json['rate'];
    _count = json['count'];
  }
  double? _rate;
  int? _count;
  Rating copyWith({
    double? rate,
    int? count,
  }) =>
      Rating(
        rate: rate ?? _rate,
        count: count ?? _count,
      );
  double? get rate => _rate;
  int? get count => _count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rate'] = _rate;
    map['count'] = _count;
    return map;
  }
}
