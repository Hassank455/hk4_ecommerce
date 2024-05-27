import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/features/onboarding/logic/cubit/onboarding_cubit.dart';
import 'package:hk4_ecommerce/features/onboarding/logic/cubit/onboarding_state.dart';
import 'package:hk4_ecommerce/features/onboarding/widget/onboarding_item.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Scaffold(
          body: PageView.builder(
            padEnds: false,
            controller: context.read<OnboardingCubit>().pageController,
            physics: const BouncingScrollPhysics(),
            itemCount: 2,
            onPageChanged: (int page) {
              context.read<OnboardingCubit>().changeCurrentPage(page);
            },
            itemBuilder: (context, index) {
              return OnboardingItemWidget(
                image: context.read<OnboardingCubit>().onboardingData[index]
                    ['image'],
                title: context.read<OnboardingCubit>().onboardingData[index]
                    ['title'],
                description: context
                    .read<OnboardingCubit>()
                    .onboardingData[index]['dec'],
              );
            },
          ),
        );
      },
    );
  }
}
