

import 'package:hk4_ecommerce/core/networking/api_error_handler.dart';
import 'package:hk4_ecommerce/core/networking/api_result.dart';
import 'package:hk4_ecommerce/core/networking/api_service.dart';
import 'package:hk4_ecommerce/features/register/data/models/register_request_body.dart';
import 'package:hk4_ecommerce/features/register/data/models/register_response.dart';

class RegisterRepo {
  final ApiService _apiService;

  RegisterRepo(this._apiService);

  Future<ApiResult<RegisterResponse>> register(
      RegisterRequestBody registerRequestBody) async {
    try {
      final response = await _apiService.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}