// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponseModel _$CategoriesResponseModelFromJson(
        Map<String, dynamic> json) =>
    CategoriesResponseModel(
      status: json['status'] as bool,
      message: json['message'] as String?,
      data: CategoriesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriesResponseModelToJson(
        CategoriesResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

CategoriesData _$CategoriesDataFromJson(Map<String, dynamic> json) =>
    CategoriesData(
      currentPage: (json['current_page'] as num).toInt(),
      categoriesList: (json['data'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String,
      from: (json['from'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      lastPageUrl: json['last_page_url'] as String,
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String,
      perPage: (json['per_page'] as num).toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$CategoriesDataToJson(CategoriesData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.categoriesList,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
