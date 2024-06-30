import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:shimmer/shimmer.dart';

class ProductShimmerLoading extends StatelessWidget {
  const ProductShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 6,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
            ),
            color: ColorsManager.white,
            borderRadius: BorderRadius.circular(AppSize.s10.r),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Shimmer.fromColors(
                      baseColor: ColorsManager.lightGray,
                      highlightColor: Colors.white,
                      child: Container(
                        height: AppSize.s120.h,
                        width: AppSize.s100.w,
                        decoration: const BoxDecoration(
                          color: ColorsManager.lightGray,
                        ),
                      ),
                    ),
                    verticalSpace(AppSize.s8),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Shimmer.fromColors(
                            baseColor: ColorsManager.lightGray,
                            highlightColor: Colors.white,
                            child: Container(
                              height: 15.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: ColorsManager.lightGray,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          Shimmer.fromColors(
                            baseColor: ColorsManager.lightGray,
                            highlightColor: Colors.white,
                            child: Container(
                              height: 15.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: ColorsManager.lightGray,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          Shimmer.fromColors(
                            baseColor: ColorsManager.lightGray,
                            highlightColor: Colors.white,
                            child: Container(
                              height: 14.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                color: ColorsManager.lightGray,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          Shimmer.fromColors(
                            baseColor: ColorsManager.lightGray,
                            highlightColor: Colors.white,
                            child: Container(
                              height: 30.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: ColorsManager.lightGray,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 2 / 3.1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
