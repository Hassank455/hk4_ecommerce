import 'package:json_annotation/json_annotation.dart';

part 'home_response_model.g.dart';

@JsonSerializable()
class HomeResponseModel {
  bool? status;
  String? message;
  Data? data;

  HomeResponseModel({this.status, this.message, this.data});

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);
}

@JsonSerializable()
class Data {
  List<Banner>? banners;
  List<Product>? products;

  Data({this.banners, this.products});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class Banner {
  int? id;
  String? image;
  Category? category;
  Product? product;

  Banner({this.id, this.image, this.category, this.product});

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}

@JsonSerializable()
class Category {
  int? id;
  String? name;

  Category({this.id, this.name});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@JsonSerializable()
class Product {
  int? id;
  int? price;
  @JsonKey(name: 'old_price')
  int? oldPrice;
  int? discount;
  String? image;
  String? name;
  String? description;
  List<String>? images;
  @JsonKey(name: 'in_favorites')
  bool? inFavorites;
  @JsonKey(name: 'in_cart')
  bool? inCart;

  Product({
    this.id,
    this.price,
    this.oldPrice,
    this.discount,
    this.image,
    this.name,
    this.description,
    this.images,
    this.inFavorites,
    this.inCart,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
