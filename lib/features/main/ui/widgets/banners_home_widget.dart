import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/widgets/cached_network_image.dart';
import '../../data/models/home_response_model.dart' as b;

class BannersHomeWidget extends StatelessWidget {

  List<b.Banner> bannerList;
  BannersHomeWidget({super.key, required this.bannerList});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppSize.s180.h,
      child: CarouselSlider.builder(
        itemCount: bannerList.length,
        itemBuilder: (context, index, _) => CustomCachedNetworkImage(
          urlImage:
              bannerList[index].image ?? '',
          width: double.infinity,
          height: AppSize.s80.h,
          fit: BoxFit.fill,
          borderNumber: AppSize.s10.r,
        ),
        options: CarouselOptions(
          autoPlay: true,
          enableInfiniteScroll: true,
          height: double.infinity,
          initialPage: 0,
          viewportFraction: 1,
        ),
      ),
    );
  }
}
