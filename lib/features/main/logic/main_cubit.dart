import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/features/main/data/repos/main_repo.dart';
import 'package:hk4_ecommerce/features/main/logic/main_state.dart';

import '../data/models/home_response_model.dart';

class MainCubit extends Cubit<MainState> {
  final MainRepo _mainRepo;
  MainCubit(this._mainRepo) : super(const MainState.initial());

  List<Banner> bannerList = [];

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

  void getHome() async {
    emit(const MainState.homeLoading());
    final response = await _mainRepo.getHome();
    response.when(
      success: (homeResponseModel) {
        bannerList = homeResponseModel.data?.banners ?? [];
        emit(MainState.homeSuccess(homeResponseModel));
      },
      failure: (errorHandler) {
        emit(MainState.homeError(errorHandler));
      },
    );
  }
}
