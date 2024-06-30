import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/theming/styles.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/value/app_strings.dart';
import 'package:hk4_ecommerce/core/widgets/cached_network_image.dart';
import 'package:hk4_ecommerce/core/widgets/custom_text.dart';
import 'package:hk4_ecommerce/features/profile/ui/widgets/item_list_tile_widget.dart';
import 'package:hk4_ecommerce/features/profile/ui/widgets/profile_user_data_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              vertical: AppSize.s20.h, horizontal: AppSize.s20.w),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                verticalSpace(AppSize.s10),
                CustomText(
                  text: AppStrings.yourProfile,
                  style: TextStyles.font18DarkBlueBold,
                ),
                verticalSpace(AppSize.s10),
                const ProfileUserDataWidget(),
                verticalSpace(AppSize.s20),
                Container(
                  padding: const EdgeInsets.all(AppSize.s10),
                  decoration: BoxDecoration(
                    color: ColorsManager.lighterGray,
                    borderRadius: BorderRadius.circular(AppSize.s8.r),
                  ),
                  child: Column(
                    children: [
                      ItemListTileWidget(
                        title: AppStrings.language,
                      ),
                      ItemListTileWidget(
                        title: AppStrings.theme,
                      ),
                      ItemListTileWidget(
                        title: AppStrings.privacyPolicy,
                      ),
                      ItemListTileWidget(
                        title: AppStrings.termsConditions,
                      ),
                      ItemListTileWidget(
                        title: AppStrings.logout,
                        isLogout: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
