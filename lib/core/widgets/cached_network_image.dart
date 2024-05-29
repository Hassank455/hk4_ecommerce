import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

// ignore: must_be_immutable
class CustomCachedNetworkImage extends StatelessWidget {
  final String urlImage;
  final double width;
  final double height;
  final double borderNumber;
  final BoxFit? fit;
  bool withIndicator;

  CustomCachedNetworkImage({
    required this.urlImage,
    required this.height,
    required this.width,
    required this.borderNumber,
    super.key,
    this.fit,
    this.withIndicator = true,
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
        placeholder: (context, url) => Container(
          width: ScreenUtil().setWidth(width),
          height: ScreenUtil().setHeight(height),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderNumber.r),
          ),
          child: withIndicator
              ? Shimmer.fromColors(
                  baseColor: Colors.grey.withOpacity(0.25),
                  highlightColor: Colors.grey.withOpacity(0.1),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(borderNumber.r),
                        color: Theme.of(context).cardColor),
                  ))
              : null,
        ),
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
