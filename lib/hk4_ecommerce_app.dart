import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/routing/app_router.dart';
import 'package:hk4_ecommerce/core/routing/routes.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';

class Hk4EcommerceApp extends StatelessWidget {
  final AppRouter appRouter;

  const Hk4EcommerceApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'Hk4 E-commerce App',
          theme: ThemeData(
            primaryColor: ColorsManager.mainDarkBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generateRoute,
        ));
  }
}
