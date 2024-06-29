import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/categories_widget/categories_list_view_item.dart';

import '../../../data/models/categories_response_model.dart';

class CategoriesListView extends StatelessWidget {
  List<Category> categoriesList;
  CategoriesListView({super.key, required this.categoriesList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          return CategoriesListViewItem(
            category: categoriesList[index],
            itemIndex: index,
          );
        },
      ),
    );
  }
}
