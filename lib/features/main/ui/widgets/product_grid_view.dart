import 'package:flutter/material.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:hk4_ecommerce/core/widgets/cached_network_image.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/product_grid_view_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ProductGridViewItem(
            image:
                'https://student.valuxapps.com/storage/uploads/products/1615440322npwmU.71DVgBTdyLL._SL1500_.jpg',
            nameProduct: 'nameProduct',
            price: 10,
            oldPrice: 10,
            discount: 10,
            favoriteIcon: Icon(Icons.favorite),
            showAddCart: false,
            addFavorite: () {});
      },
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 2 / 3.10,
      ),
      itemCount: 10,
    );
  }
}
