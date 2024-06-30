import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/theming/styles.dart';
import 'package:hk4_ecommerce/core/value/app_images.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/widgets/custom_image.dart';
import 'package:hk4_ecommerce/core/widgets/custom_text.dart';

class ItemListTileWidget extends StatelessWidget {
  bool isLogout;
  String title;

  ItemListTileWidget({
    super.key,
    this.isLogout = false,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomText(
              text: title,
              style: TextStyles.font14DarkBlueMedium.copyWith(
                color: isLogout ? Colors.red : ColorsManager.darkBlue,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(AppSize.s10),
              decoration: BoxDecoration(
                color: ColorsManager.white,
                borderRadius: BorderRadius.circular(AppSize.s8.r),
              ),
              child: CustomSvgImage(
                imageName: AppSvgImage.arrow,
                height: AppSize.s10.h,
                width: AppSize.s10.w,
                color: isLogout ? Colors.red : ColorsManager.black,
              ),
            ),
          ],
        ),
        verticalSpace(AppSize.s10),
        isLogout ? const SizedBox() : const Divider(),
        verticalSpace(AppSize.s5),
      ],
    );
  }
}
