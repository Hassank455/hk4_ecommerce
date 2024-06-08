// dart run build_runner build  --delete-conflicting-outputs
// flutter run --release -t lib/main_production.dart --flavor Production

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/di/dependency_injection.dart';
import 'package:hk4_ecommerce/core/helpers/constants.dart';
import 'package:hk4_ecommerce/core/helpers/extensions.dart';
import 'package:hk4_ecommerce/core/helpers/shared_pref_helper.dart';
import 'package:hk4_ecommerce/core/routing/app_router.dart';
import 'package:hk4_ecommerce/hk4_ecommerce_app.dart';

//dart run build_runner build  --delete-conflicting-outputs
// flutter run --release -t lib/main_production.dart --flavor Production
// flutter build apk --flavor Production -t lib/main_production.dart 

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
   await checkIfLoggedInUser();
  runApp(Hk4EcommerceApp(appRouter: AppRouter()));
}
checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}