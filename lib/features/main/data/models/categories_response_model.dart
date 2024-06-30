import 'package:json_annotation/json_annotation.dart';

part 'categories_response_model.g.dart';

@JsonSerializable()
class CategoriesResponseModel {
  final bool status;
  final String? message;
  final CategoriesData data;

  factory CategoriesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseModelFromJson(json);

  CategoriesResponseModel({required this.status, this.message, required this.data});


}

@JsonSerializable()
class CategoriesData {
  @JsonKey(name: 'current_page')
 final int currentPage;
 @JsonKey(name: 'data')
  final List<Category> categoriesList;
  @JsonKey(name: 'first_page_url')
  final String firstPageUrl;
  final int from;
  @JsonKey(name: 'last_page')
  final int lastPage;
  @JsonKey(name: 'last_page_url')
  final String lastPageUrl;
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  final String path;
  @JsonKey(name: 'per_page')
  final int perPage;
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  final int to;
  final int total;

  factory CategoriesData.fromJson(Map<String, dynamic> json) => _$CategoriesDataFromJson(json);

  CategoriesData({
    required this.currentPage,
    required this.categoriesList,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    this.nextPageUrl,
    required this.path,
    required this.perPage,
    this.prevPageUrl,
    required this.to,
    required this.total,
  });
}

@JsonSerializable()
class Category {
  int? id;
  String? name;
  String? image;

  Category({
    this.id,
    this.name,
    this.image,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}