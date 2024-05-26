import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/features/onboarding/logic/cubit/onboarding_cubit.dart';
import 'package:hk4_ecommerce/features/onboarding/logic/cubit/onboarding_state.dart';
import 'package:hk4_ecommerce/features/onboarding/widget/onboarding_item.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  padEnds: false,
                  controller: context.read<OnboardingCubit>().pageController,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 2,
                  onPageChanged: (int page) {
                    print('page');
                    print(page);
                    // context.read<OnboardingCubit>().currentPage = page;
                    context.read<OnboardingCubit>().changeCurrentPage(page);
                  },
                  itemBuilder: (context, index) {
                    return OnboardingItemWidget(
                      image: context
                          .read<OnboardingCubit>()
                          .onboardingImage[index],
                      title: context
                          .read<OnboardingCubit>()
                          .onboardingNames[index],
                      description: context
                          .read<OnboardingCubit>()
                          .onboardingDescriptions[index],
                    );
                  },
                ),
              ),
            ],
          ),
        );
     
  }
}
