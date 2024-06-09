import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/features/main/data/models/categories_response_model.dart';
import 'package:hk4_ecommerce/features/main/data/repos/main_repo.dart';
import 'package:hk4_ecommerce/features/main/logic/main_state.dart';

class MainCubit extends Cubit<MainState> {
  final MainRepo _mainRepo;
  MainCubit(this._mainRepo) : super(const MainState.initial());

  void getCategories() async {
    emit(const MainState.categoriesLoading());
    final response = await _mainRepo.getCategories();
    response.when(
      success: (categoriesResponseModel) {
        emit(MainState.categoriesSuccess(categoriesResponseModel));
      },
      failure: (errorHandler) {
        emit(MainState.categoriesError(errorHandler));
      },
    );
  }
}
