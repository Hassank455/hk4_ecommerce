import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:shimmer/shimmer.dart';

class CategoriesShimmerLoading extends StatelessWidget {
  const CategoriesShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 12.w),
            child: Column(
              children: [
                Shimmer.fromColors(
                  baseColor: ColorsManager.lightGray,
                  highlightColor: Colors.white,
                  child: const CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                  ),
                ),
                verticalSpace(8),
                Shimmer.fromColors(
                  baseColor: ColorsManager.lightGray,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 14.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: ColorsManager.lightGray,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
