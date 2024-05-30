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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                verticalSpace(AppSize.s40),
                CustomCachedNetworkImage(
                  urlImage:
                      'https://st3.depositphotos.com/15648834/17930/v/450/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg',
                  height: AppSize.s80.h,
                  width: AppSize.s80.h,
                  borderNumber: AppSize.s0,
                ),
                verticalSpace(AppSize.s20),
                CustomText(
                  text: 'Hassan Kamal Almsaudder',
                  style: TextStyles.font16BlackBold,
                ),
                verticalSpace(AppSize.s20),
                ItemListTileWidget(
                  icon: Icons.edit,
                  title: AppStrings.editProfile,
                ),
                verticalSpace(AppSize.s10),
                const Divider(
                  color: ColorsManager.lightGray,
                  height: 0.2,
                ),
                verticalSpace(AppSize.s10),
                ItemListTileWidget(
                  icon: Icons.edit,
                  title: AppStrings.editProfile,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
