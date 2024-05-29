import 'package:flutter/material.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/theming/styles.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/widgets/custom_text.dart';

class ItemListTileWidget extends StatelessWidget {
  IconData icon;
  String title;

  ItemListTileWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        padding: const EdgeInsets.all(AppSize.s10),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: ColorsManager.lightBlue,
        ),
        child: Icon(
          icon,
          color: ColorsManager.mainDarkBlue,
        ),
      ),
      title: CustomText(
        text: title,
        style: TextStyles.font16BlackMedium,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
        size: AppSize.s20,
      ),
    );
  }
}
