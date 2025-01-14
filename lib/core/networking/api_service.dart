import 'package:dio/dio.dart';
import 'package:hk4_ecommerce/core/networking/api_constants.dart';
import 'package:hk4_ecommerce/features/login/data/models/login_request_body.dart';
import 'package:hk4_ecommerce/features/login/data/models/login_response.dart';
import 'package:hk4_ecommerce/features/main/data/models/categories_response_model.dart';
import 'package:hk4_ecommerce/features/main/data/models/home_response_model.dart';
import 'package:hk4_ecommerce/features/register/data/models/register_request_body.dart';
import 'package:hk4_ecommerce/features/register/data/models/register_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(
    @Body() RegisterRequestBody registerRequestBody,
  );

  @GET(ApiConstants.categories)
  Future<CategoriesResponseModel> getCategories();

    @GET(ApiConstants.home)
  Future<HomeResponseModel> getHome();
}
