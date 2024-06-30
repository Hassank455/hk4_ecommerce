import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/theming/styles.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/value/app_strings.dart';
import 'package:hk4_ecommerce/core/widgets/cached_network_image.dart';
import 'package:hk4_ecommerce/core/widgets/custom_text.dart';

import '../../../data/models/home_response_model.dart' as p;

class ProductGridViewItem extends StatelessWidget {
  p.Product product;
  ProductGridViewItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
        color: ColorsManager.moreLightGray,
        borderRadius: BorderRadius.circular(AppSize.s10.r),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: GestureDetector(
                    onTap: () {},
                    child: CustomCachedNetworkImage(
                      urlImage: product.image ?? '',
                      height: 100,
                      width: 100,
                      borderNumber: 1,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                verticalSpace(AppSize.s8),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name ?? '',
                        style: TextStyle(
                          height: 1.2,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: ('${product.price.toString()} EGP'),
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: ColorsManager.mainDarkBlue),
                          ),
                          const Spacer(),
                          if (product.discount != 0)
                            CustomText(
                              text: '${product.oldPrice.toString()} EGP',
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                              ),
                            ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: product.inCart!
                            ? ElevatedButton.icon(
                                onPressed: () {},
                                label: CustomText(text: AppStrings.added),
                                icon: const Icon(Icons.check),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.green.shade300),
                                ),
                              )
                            : ElevatedButton.icon(
                                onPressed: () {},
                                label: CustomText(
                                  text: AppStrings.addToCart,
                                  style: TextStyles.font12DarkBlueRegular,
                                ),
                                icon: const Icon(
                                    Icons.add_shopping_cart_outlined),
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Spacer(),
              IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
            ],
          ),
          if (product.discount != 0)
            const Banner(
              message: 'SALE',
              location: BannerLocation.topStart,
            ),
        ],
      ),
    );
  }
}
