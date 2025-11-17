import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/features/main/data/repos/main_repo.dart';
import 'package:hk4_ecommerce/features/main/logic/main_state.dart';

import '../data/models/home_response_model.dart';

class MainCubit extends Cubit<MainState> {
  final MainRepo _mainRepo;
  MainCubit(this._mainRepo) : super(const MainState.initial());

  // @override
  // void emit(MainState state) {
  //   super.emit(state);
  //   log(state.toString()); // Print the current state to the console
  // }

  @override
  void onChange(Change<MainState> change) {
    super.onChange(change);
    log(change.toString()); // Print the change to the console
  }

  // void getCategoriesAndHome() async {
  //   log('message');
  //   emit(const MainState.loading());
  //  await Future.wait([
  //     getCategories(),
  //     getHome(),
  //   ]);
  //     emit(const MainState.success());
  // }

  List<Banner> bannerList = [];

  Future<void> getCategories() async {
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

  Future<void> getHome() async {
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
