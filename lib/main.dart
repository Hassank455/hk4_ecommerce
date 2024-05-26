// dart run build_runner build  --delete-conflicting-outputs
// flutter run --release -t lib/main_production.dart --flavor Production

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/routing/app_router.dart';
import 'package:hk4_ecommerce/hk4_ecommerce_app.dart';

void main() async {
  //! setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(Hk4EcommerceApp(appRouter: AppRouter()));
}