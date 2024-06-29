import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/core/helpers/helper.dart';
import 'package:hk4_ecommerce/features/main/data/models/categories_response_model.dart';
import 'package:hk4_ecommerce/features/main/logic/main_cubit.dart';
import 'package:hk4_ecommerce/features/main/logic/main_state.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/categories_widget/categories_list_view.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/categories_widget/categories_shimmer_loading.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      buildWhen: (previous, current) =>
          current is CategoriesLoading ||
          current is CategoriesSuccess ||
          current is CategoriesError,
      listener: (context, state) {
        state.maybeWhen(
          categoriesError: (errorHandler) {
            setupError(context: context, text: errorHandler.toString());
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(categoriesLoading: () {
          log('loading');
          return setupLoading();
        }, categoriesSuccess: (CategoriesResponseModel categoriesDataList) {
          return setupSuccess(categoriesDataList.data.categoriesList);
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
    // return BlocBuilder<MainCubit, MainState>(
    //   buildWhen: (previous, current) =>
    //       current is CategoriesLoading ||
    //       current is CategoriesSuccess ||
    //       current is CategoriesError,
    //   builder: (context, state) {
    //     return state.maybeWhen(
    //         categoriesLoading: () {
    //           return setupLoading();
    //         },
    //         categoriesSuccess: (CategoriesResponseModel categoriesDataList) {
    //           return setupSuccess(categoriesDataList.data.categoriesList);
    //         },
    //         categoriesError: (errorHandler) => setupError(context: context),
    //         orElse: () {
    //           return const SizedBox.shrink();
    //         });
    //   },
    // );
  }

  Widget setupLoading() {
    return const CategoriesShimmerLoading();
  }

  Widget setupSuccess(List<Category> categoriesList) {
    return CategoriesListView(
      categoriesList: categoriesList,
    );
  }

  void setupError({required BuildContext context, required String text}) {
    return Helper().showSnackBar(text: text, context: context);
  }
}
