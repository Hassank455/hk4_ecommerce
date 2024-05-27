import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';

Widget indicatorWidget(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: AppSize.s4.w),
    height: AppSize.s6.h,
    width: isActive ? AppSize.s26.w : AppSize.s6.w,
    decoration: BoxDecoration(
      borderRadius: isActive
          ? BorderRadius.circular(AppSize.s5.r)
          : BorderRadius.circular(AppSize.s100.r),
      color: isActive
          ? ColorsManager.white
          : ColorsManager.white.withOpacity(0.2),
    ),
  );
}