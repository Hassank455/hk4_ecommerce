import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hk4_ecommerce/core/networking/api_service.dart';
import 'package:hk4_ecommerce/core/networking/dio_factory.dart';
import 'package:hk4_ecommerce/features/login/data/repos/login_repo.dart';
import 'package:hk4_ecommerce/features/login/logic/cubit/login_cubit.dart';
import 'package:hk4_ecommerce/features/onboarding/logic/cubit/onboarding_cubit.dart';

//! important
// registerLazySingleton => create one instant and use it in all app
// registerFactory =< every time we want to use it create new instant
final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio & ApiService

 Dio dio = DioFactory.getDio();
 getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // onboarding
  getIt.registerLazySingleton<OnboardingCubit>(() => OnboardingCubit());

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // // signup
  // getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  // getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}