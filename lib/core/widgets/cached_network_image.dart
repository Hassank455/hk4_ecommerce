import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';
import 'package:shimmer/shimmer.dart';

// ignore: must_be_immutable
class CustomCachedNetworkImage extends StatelessWidget {
  final String urlImage;
  final double width;
  final double height;
  final double borderNumber;
  final BoxFit? fit;

  CustomCachedNetworkImage({
    required this.urlImage,
    required this.height,
    required this.width,
    required this.borderNumber,
    super.key,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderNumber.r),
      child: CachedNetworkImage(
        imageUrl: urlImage,
        cacheKey: urlImage,
        imageBuilder: (context, imageProvider) => Container(
          width: ScreenUtil().setWidth(width),
          height: ScreenUtil().setHeight(height),
          decoration: BoxDecoration(
            shape: borderNumber == 0 ? BoxShape.circle : BoxShape.rectangle,
            image: DecorationImage(
              image: imageProvider,
              fit: fit ?? BoxFit.cover,
            ),
          ),
        ),
        progressIndicatorBuilder: (context, url, downloadProgress) {
          return Shimmer.fromColors(
            baseColor: ColorsManager.lightGray,
            highlightColor: Colors.white,
            child: Container(
              width: width.w,
              height: height.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(borderNumber.r),
                color: Colors.white,
              ),
            ),
          );
        },
        errorWidget: (context, url, error) => Container(
          width: ScreenUtil().setWidth(width),
          height: ScreenUtil().setHeight(height),
          decoration: BoxDecoration(
            shape: borderNumber == 0 ? BoxShape.circle : BoxShape.rectangle,
          ),
          child: const SizedBox(),
        ),
      ),
    );
  }
}
