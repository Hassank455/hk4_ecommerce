import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/core/di/dependency_injection.dart';
import 'package:hk4_ecommerce/core/routing/routes.dart';
import 'package:hk4_ecommerce/features/home/ui/home_screen.dart';
import 'package:hk4_ecommerce/features/login/logic/cubit/login_cubit.dart';
import 'package:hk4_ecommerce/features/login/ui/login_screen.dart';
import 'package:hk4_ecommerce/features/onboarding/logic/cubit/onboarding_cubit.dart';
import 'package:hk4_ecommerce/features/onboarding/onboarding_screen.dart';
import 'package:hk4_ecommerce/features/profile/ui/profile_screen.dart';
import 'package:hk4_ecommerce/features/register/logic/cubit/register_cubit.dart';
import 'package:hk4_ecommerce/features/register/ui/register_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => OnboardingCubit(),
            child: const OnboardingScreen(),
          ),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: const RegisterScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
