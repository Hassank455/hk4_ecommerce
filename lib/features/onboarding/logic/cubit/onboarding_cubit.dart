import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/core/value/app_images.dart';
import 'package:hk4_ecommerce/core/value/app_strings.dart';
import 'package:hk4_ecommerce/features/onboarding/logic/cubit/onboarding_state.dart';
import 'package:hk4_ecommerce/features/onboarding/widget/indecator_widget.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState.initial());

  List<String> onboardingImage = [
    AppPngImage.onboardingFirstImage,
    AppPngImage.onboardingSecondImage,
  ];
  List<String> onboardingNames = [
    AppStrings.onboardingFirstName,
    AppStrings.onboardingSecondName,
  ];
  List<String> onboardingDescriptions = [
    AppStrings.onboardingFirstDescription,
    AppStrings.onboardingSecondDescription,
  ];

  int currentPage = 0;

  void changeCurrentPage(int index) {
    currentPage = index;
    print('currentPage');
    print(currentPage);
    emit(const OnboardingState.changePageState());
    print(currentPage);
  }

  PageController pageController = PageController(
    initialPage: 0,
  );

  List<Widget> buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 2; i++) {
      list.add(
          i == currentPage ? indicatorWidget(true) : indicatorWidget(false));
    }
    return list;
  }
}
