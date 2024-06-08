import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/widgets/cached_network_image.dart';

class BannersHomeWidget extends StatelessWidget {
  const BannersHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppSize.s180.h,
      child: CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (context, index, _) => CustomCachedNetworkImage(
          urlImage:
              'https://as2.ftcdn.net/v2/jpg/03/48/05/47/1000_F_348054737_Tv5fl9LQnZnzDUwskKVKd5Mzj4SjGFxa.jpg',
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
