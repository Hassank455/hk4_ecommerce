import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/theming/styles.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/widgets/cached_network_image.dart';
import 'package:hk4_ecommerce/core/widgets/custom_text.dart';

class ProfileUserDataWidget extends StatelessWidget {
  const ProfileUserDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.s10),
      decoration: BoxDecoration(
        color: ColorsManager.lighterGray,
        borderRadius: BorderRadius.circular(AppSize.s8.r),
      ),
      child: Row(
        children: [
          CustomCachedNetworkImage(
            urlImage:
                'https://media.istockphoto.com/id/1386479313/photo/happy-millennial-afro-american-business-woman-posing-isolated-on-white.jpg?s=1024x1024&w=is&k=20&c=5OK7djfD3cnNmQ-DR0iQzF-vmA-iTNN1TbuEyCG1DfA=',
            height: AppSize.s50.h,
            width: AppSize.s50.w,
            borderNumber: AppSize.s8.r,
          ),
          horizontalSpace(AppSize.s10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: AppSize.s190.w,
                child: CustomText(
                  text: 'Hassan Kamal',
                  style: TextStyles.font14DarkBlueMedium,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                width: AppSize.s190.w,
                child: CustomText(
                  text: '+972 597 232 447',
                  style: TextStyles.font12GrayRegular,
                  maxLines: 1,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(AppSize.s10),
            decoration: BoxDecoration(
              color: ColorsManager.white,
              borderRadius: BorderRadius.circular(AppSize.s8.r),
            ),
            child: const Icon(
              Icons.edit,
              size: AppSize.s25,
            ),
          )
        ],
      ),
    );
  }
}
