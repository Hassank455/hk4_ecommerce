import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hk4_ecommerce/core/networking/api_error_handler.dart';
import 'package:hk4_ecommerce/features/main/data/models/categories_response_model.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = _Initial;

  const factory MainState.categoriesLoading() = CategoriesLoading;
  const factory MainState.categoriesSuccess(
      CategoriesResponseModel categoriesResponseModel) = CategoriesSuccess;
  const factory MainState.categoriesError(ErrorHandler errorHandler) =
      CategoriesError;
}
