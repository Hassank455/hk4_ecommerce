import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/helper.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/features/main/data/models/home_response_model.dart';
import 'package:hk4_ecommerce/features/main/logic/main_cubit.dart';
import 'package:hk4_ecommerce/features/main/logic/main_state.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/banners_home_widget.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/categories_widget/categories_shimmer_loading.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/products_widget/product_grid_view.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/products_widget/product_shimmer_loading.dart';
import 'package:shimmer/shimmer.dart';

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
            setupError(
                context: context,
                text: errorHandler.apiErrorModel.message ?? '');
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
      builder: (context, state) {
        return state is HomeSuccess
            ? setupSuccess(state.homeResponseModel.data!)
            : state is HomeError
                ? const SizedBox.shrink()
                : setupLoading();

        // return state.maybeWhen(
        //   homeLoading: () {
        //   log('Home is loading');
        //   return setupLoading();
        // }, homeSuccess: (HomeResponseModel homeResponseModel) {
        //   return setupSuccess(homeResponseModel.data!);
        // }, orElse: () {
        //   return const SizedBox.shrink();
        // });
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
    return Column(
      children: [
        Shimmer.fromColors(
          baseColor: ColorsManager.lightGray,
          highlightColor: Colors.white,
          child: Container(
            height: AppSize.s180.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: ColorsManager.lightGray,
                borderRadius: BorderRadius.circular(AppSize.s10.r)),
          ),
        ),
        verticalSpace(10),
        const ProductShimmerLoading(),
      ],
    );
  }

  Widget setupSuccess(Data homeData) {
    return Column(
      children: [
        BannersHomeWidget(
          bannerList: homeData.banners!,
        ),
        verticalSpace(10),
        ProductGridView(
          products: homeData.products!,
        ),
      ],
    );
  }

  void setupError({required BuildContext context, required String text}) {
    return Helper().showSnackBar(text: text, context: context);
  }
}
