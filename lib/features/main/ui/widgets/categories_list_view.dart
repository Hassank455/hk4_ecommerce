import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/features/main/ui/widgets/categories_list_view_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        //itemCount: specializationDataList.length,
        itemCount: 5,
        itemBuilder: (context, index) {
          return CategoriesListViewItem(
            // specializationsData: specializationDataList[index],
            itemIndex: index,
          );
        },
      ),
    );
    ;
  }
}
