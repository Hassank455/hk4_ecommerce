import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/value/app_images.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/value/app_strings.dart';
import 'package:hk4_ecommerce/core/widgets/custom_image.dart';
import 'package:hk4_ecommerce/core/widgets/custom_text.dart';

import '../../../../core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: '${AppStrings.hi} !',
              style: TextStyles.font18DarkBlueBold,
            ),
            CustomText(
              text: AppStrings.howAreYou,
              style: TextStyles.font12GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: AppSize.s24.r,
          backgroundColor: ColorsManager.moreLighterGray,
          child: const CustomSvgImage(
            imageName: AppSvgImage.notifications,
          ),
        )
      ],
    );
  }
}
