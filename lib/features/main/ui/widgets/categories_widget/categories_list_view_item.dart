import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/widgets/cached_network_image.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../data/models/categories_response_model.dart';

class CategoriesListViewItem extends StatelessWidget {
  final Category category;
  final int itemIndex;
  const CategoriesListViewItem(
      {super.key, required this.category, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : AppSize.s12.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorsManager.lightBlue,
            child: CustomCachedNetworkImage(
                urlImage: category.image!,
                height: AppSize.s40.h,
                width: AppSize.s40.w,
                borderNumber: AppSize.s0.r),
          ),
          verticalSpace(8),
          Text(
            category.name ?? '',
            style: TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
