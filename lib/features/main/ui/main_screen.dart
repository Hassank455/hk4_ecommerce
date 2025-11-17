import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/features/main/logic/main_cubit.dart';
import 'package:hk4_ecommerce/features/main/logic/main_state.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/banners_home_widget.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/categories_widget/categories_bloc_builder.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/categories_widget/categories_list_view.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/categories_widget/categories_shimmer_loading.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/home_top_bar.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/products_widget/product_bloc_builder.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/products_widget/product_grid_view.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/products_widget/product_shimmer_loading.dart';
import 'package:shimmer/shimmer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
            AppSize.s20.w,
            AppSize.s0.h,
            AppSize.s20.w,
            AppSize.s0.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                verticalSpace(AppSize.s10),
                const HomeTopBar(),
                verticalSpace(AppSize.s20),
                BlocBuilder<MainCubit, MainState>(
                    buildWhen: (previous, current) =>
                        current is CategoriesLoading ||
                        current is CategoriesSuccess ||
                        current is CategoriesError,
                    builder: (context, state) {
                      if (state is CategoriesLoading) {
                        log('Categories is loading');
                        return const CategoriesShimmerLoading();
                      } else if (state is CategoriesSuccess) {
                        log('Categories is Success');
                        return CategoriesListView(
                          categoriesList:
                              state.categoriesResponseModel.data.categoriesList,
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    }),
                //  const CategoriesBlocBuilder(),
                verticalSpace(AppSize.s10),
                // const ProductBlocBuilder(),
                BlocBuilder<MainCubit, MainState>(
                    buildWhen: (previous, current) =>
                        current is HomeLoading ||
                        current is HomeSuccess ||
                        current is HomeError,
                    builder: (context, state) {
                      if (state is HomeLoading) {
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
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s10.r)),
                              ),
                            ),
                            verticalSpace(10),
                            const ProductShimmerLoading(),
                          ],
                        );
                      } else if (state is HomeSuccess) {
                        return Column(
                          children: [
                            BannersHomeWidget(
                              bannerList:
                                  state.homeResponseModel.data!.banners!,
                            ),
                            verticalSpace(10),
                            ProductGridView(
                              products: state.homeResponseModel.data!.products!,
                            ),
                          ],
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
