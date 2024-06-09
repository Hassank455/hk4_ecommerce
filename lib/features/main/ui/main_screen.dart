import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/banners_home_widget.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/categories_list_view.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/home_top_bar.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/product_grid_view.dart';

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
            AppSize.s16.h,
            AppSize.s20.w,
            AppSize.s28.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                verticalSpace(AppSize.s20),
                const HomeTopBar(),
                verticalSpace(AppSize.s20),
                const BannersHomeWidget(),
                verticalSpace(AppSize.s10),
                const CategoriesListView(),
                verticalSpace(AppSize.s10),
                const ProductGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
