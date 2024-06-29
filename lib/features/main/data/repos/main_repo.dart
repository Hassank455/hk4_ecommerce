import 'package:hk4_ecommerce/core/networking/api_error_handler.dart';
import 'package:hk4_ecommerce/core/networking/api_result.dart';
import 'package:hk4_ecommerce/core/networking/api_service.dart';
import 'package:hk4_ecommerce/features/main/data/models/categories_response_model.dart';
import 'package:hk4_ecommerce/features/main/data/models/home_response_model.dart';

class MainRepo {
  final ApiService _apiService;

  MainRepo(this._apiService);

  Future<ApiResult<CategoriesResponseModel>> getCategories() async {
    try {
      final response = await _apiService.getCategories();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<HomeResponseModel>> getHome() async {
    try {
      final response = await _apiService.getHome();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}