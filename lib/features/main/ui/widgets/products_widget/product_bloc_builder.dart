import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/core/helpers/helper.dart';
import 'package:hk4_ecommerce/features/main/data/models/home_response_model.dart';
import 'package:hk4_ecommerce/features/main/logic/main_cubit.dart';
import 'package:hk4_ecommerce/features/main/logic/main_state.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/products_widget/product_grid_view.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/products_widget/product_shimmer_loading.dart';

class ProductBlocBuilder extends StatelessWidget {
  const ProductBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      buildWhen: (previous, current) =>
          current is HomeLoading ||
          current is HomeSuccess ||
          current is HomeError,
      listener: (context, state) {
        state.maybeWhen(
          homeError: (errorHandler) {
            setupError(context: context, text: errorHandler.toString());
          },
          homeLoading: () {
            return setupLoading();
          },
          homeSuccess: (HomeResponseModel homeResponseModel) {
            return setupSuccess(homeResponseModel.data!.products!);
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(homeLoading: () {
          return setupLoading();
        }, homeSuccess: (HomeResponseModel homeResponseModel) {
          return setupSuccess(homeResponseModel.data!.products!);
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
    return const ProductShimmerLoading();
  }

  Widget setupSuccess(List<Product> productsList) {
    return ProductGridView(
      products: productsList,
    );
  }

  void setupError({required BuildContext context, required String text}) {
    return Helper().showSnackBar(text: text, context: context);
  }
}
