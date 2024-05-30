import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/widgets/custom_text.dart';

class Helper {
  void showSnackBar({
    required String text,
    required BuildContext context,
    bool error = false,
    Color? color,
    String? actionTitle,
    Function()? onPressed,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: CustomText(
          text: text,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: ColorsManager.white),
        ),
        // width: 300,
        backgroundColor: ColorsManager.gray,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(right: 50.w, bottom: AppSize.s400, left: 50.w),
        elevation: 5,
        dismissDirection: DismissDirection.none,
        duration: const Duration(seconds: 3),
        action: actionTitle != null
            ? SnackBarAction(
                onPressed: onPressed ?? () {},
                label: actionTitle,
                textColor: Colors.white,
              )
            : null,
        onVisible: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
                bottomRight: Radius.circular(30.r),
                bottomLeft: Radius.circular(30.r))),
        // padding: EdgeInsets.all(15),
      ),
    );
  }
}
