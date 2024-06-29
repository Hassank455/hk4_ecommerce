import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/core/di/dependency_injection.dart';
import 'package:hk4_ecommerce/core/helpers/helper.dart';
import 'package:hk4_ecommerce/core/value/app_strings.dart';
import 'package:hk4_ecommerce/features/cart/ui/cart_screen.dart';
import 'package:hk4_ecommerce/features/favorite/ui/favourite_screen.dart';
import 'package:hk4_ecommerce/features/home/logic/cubit/home_state.dart';
import 'package:hk4_ecommerce/features/main/logic/main_cubit.dart';
import 'package:hk4_ecommerce/features/main/ui/main_screen.dart';
import 'package:hk4_ecommerce/features/profile/ui/profile_screen.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  List<Widget> widgetOptions = <Widget>[
    BlocProvider(
      create: (_) => getIt<MainCubit>(),
      child: MainScreen(),
    ),
    MainScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  int indexScreen = 0;

  setIndexScreen(int value) {
    indexScreen = value;
    emit(HomeState.changeIndex(index: indexScreen));
  }

  DateTime? currentBackPressTime;
  Future<bool> onWillPop({required BuildContext context}) {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Helper().showSnackBar(text: AppStrings.pressExit, context: context);
      return Future.value(false);
    }
    return Future.value(true);
  }
}
