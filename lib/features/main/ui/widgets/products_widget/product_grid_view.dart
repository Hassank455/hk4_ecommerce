import 'package:flutter/material.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/products_widget/product_grid_view_item.dart';

import '../../../data/models/home_response_model.dart';

class ProductGridView extends StatelessWidget {
  List<Product> products;
  ProductGridView({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: products.length,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return ProductGridViewItem(
          product: products[index],
        );
      },
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 2 / 3.1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
