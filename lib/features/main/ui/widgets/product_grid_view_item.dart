import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/theming/styles.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/value/app_strings.dart';
import 'package:hk4_ecommerce/core/widgets/cached_network_image.dart';
import 'package:hk4_ecommerce/core/widgets/custom_text.dart';

class ProductGridViewItem extends StatelessWidget {
  String image;
  String nameProduct;
  num price;
  num oldPrice;
  num discount;
  Icon favoriteIcon;
  bool? isCart;
  VoidCallback? addCart;
  bool showAddCart;
  VoidCallback addFavorite;
  GestureTapCallback? onPressed;
  ProductGridViewItem({
    super.key,
    required this.image,
    required this.nameProduct,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.favoriteIcon,
    this.isCart,
    this.addCart,
    required this.showAddCart,
    required this.addFavorite,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(AppSize.s10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 1,
          ),
        ],
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
                    onTap: onPressed,
                    child: CustomCachedNetworkImage(
                      urlImage: image,
                      height: 100,
                      width: 100,
                      borderNumber: 1,
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
                        nameProduct,
                        style: TextStyle(
                          height: 1.2,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: ('${price.toString()} EGP'),
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: ColorsManager.mainDarkBlue),
                          ),
                          const Spacer(),
                          if (discount != 0)
                            CustomText(
                              text: '${oldPrice.toString()} EGP',
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                              ),
                            ),
                        ],
                      ),
                      showAddCart
                          ? SizedBox(
                              width: double.infinity,
                              child: isCart!
                                  ? ElevatedButton.icon(
                                      onPressed: addCart,
                                      label: CustomText(text: AppStrings.added),
                                      icon: const Icon(Icons.check),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.green.shade300),
                                      ),
                                    )
                                  : ElevatedButton.icon(
                                      onPressed: addCart,
                                      label: CustomText(
                                        text: AppStrings.addToCart,
                                        style: TextStyles.font12DarkBlueRegular,
                                      ),
                                      icon: const Icon(
                                          Icons.add_shopping_cart_outlined),
                                    ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Spacer(),
              IconButton(icon: favoriteIcon, onPressed: addFavorite),
            ],
          ),
          if (discount != 0)
            const Banner(
              message: 'SALE',
              location: BannerLocation.topStart,
            ),
        ],
      ),
    );
  }
}
