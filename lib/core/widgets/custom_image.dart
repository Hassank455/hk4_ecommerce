import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPngImage extends StatelessWidget {
  final String imageName;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit? fit;
  const CustomPngImage(
      {super.key,required this.imageName, this.height, this.width, this.color, this.fit});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$imageName.png',
      height: height ?? 30.h,
      width: width ?? 30.w,
      fit: fit ?? BoxFit.cover,
      color: color,
    );
  }
}

class CustomSvgImage extends StatelessWidget {
  final String imageName;
  final double? height;
  final double? width;
  final Color? color;
  final Function()? onTap;
  final int rotateAngle;
  final BoxFit? fit;

  const CustomSvgImage({super.key, 
    required this.imageName,
    this.height,
    this.width,
    this.color,
    this.onTap,
    this.rotateAngle = 0,
    this.fit,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RotatedBox(
        quarterTurns: rotateAngle,
        child: SvgPicture.asset(
          'assets/svg/$imageName.svg',
          color: color,
          height: height ?? 30.h,
          width: width ?? 30.w,
          fit: fit ?? BoxFit.contain,
        ),
      ),
    );
  }
}