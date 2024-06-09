import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/widgets/cached_network_image.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CategoriesListViewItem extends StatelessWidget {
  // final SpecializationsData? specializationsData;
  final int itemIndex;
  const CategoriesListViewItem(
      {super.key,
      //   this.specializationsData,
      required this.itemIndex});

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
                urlImage:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBe01cs52XAS5R9R8NK2tVN_tdW5Nhp_n8Kw&usqp=CAU',
                height: AppSize.s40.h,
                width: AppSize.s40.w,
                borderNumber: AppSize.s0.r),
          ),
          verticalSpace(8),
          Text(
            //  specializationsData?.name ??
            'Specialization',
            style: TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
