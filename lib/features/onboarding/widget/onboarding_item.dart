import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/extensions.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/routing/routes.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/theming/styles.dart';
import 'package:hk4_ecommerce/core/value/app_images.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/widgets/custom_image.dart';
import 'package:hk4_ecommerce/core/widgets/custom_text.dart';
import 'package:hk4_ecommerce/features/onboarding/logic/cubit/onboarding_cubit.dart';

class OnboardingItemWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  OnboardingItemWidget({
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomPngImage(
          imageName: image,
          width: double.infinity,
          height: AppSize.s250.h,
        ),
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            CustomPngImage(
              imageName: AppPngImage.onboardingRectangle,
              width: double.infinity,
              height: AppSize.s500.h,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSize.s15.w),
              child: Column(
                children: [
                  CustomText(
                    text: title,
                    style: TextStyles.font24WhiteBold,
                  ),
                  verticalSpace(AppSize.s10),
                  CustomText(
                    text: description,
                    style: TextStyles.font16LightBlueRegular,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(AppSize.s30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        context.read<OnboardingCubit>().buildPageIndicator(),
                  ),
                  verticalSpace(AppSize.s70),
                  GestureDetector(
                    onTap: () {
                      if (context.read<OnboardingCubit>().currentPage !=
                          2 - 1) {
                        context.read<OnboardingCubit>().pageController.nextPage(
                            duration: Duration(milliseconds: 700),
                            curve: Curves.ease);
                      } else {
                        //  SharedPreferencesController().setOnBoarding(true);
                        context.pushNamedAndRemoveUntil(Routes.loginScreen,
                            predicate: (Route<dynamic> route) => false);
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(AppSize.s5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: AppSize.s1.w,
                            color: ColorsManager.lightBlue),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(AppSize.s20),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorsManager.lightBlue),
                        child: Icon(Icons.arrow_forward_rounded),
                      ),
                    ),
                  ),
                  verticalSpace(AppSize.s80),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
