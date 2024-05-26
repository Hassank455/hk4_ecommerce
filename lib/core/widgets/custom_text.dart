import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hk4_ecommerce/core/theming/colors.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextStyle? style;
  final Function()? onTap;
  final bool isLoading;

  CustomText({
    required this.text,
    this.onTap = null,
    this.isLoading = false,
    this.textAlign,
    this.maxLines,
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isLoading
          ? const SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(
                color: ColorsManager.mainDarkBlue,
              ),
            )
          : Text(text ?? '-',
              textAlign: textAlign ?? TextAlign.start,
              maxLines: maxLines,
              overflow: maxLines != null ? TextOverflow.ellipsis : null,
              textScaleFactor: 1,
              style: style ?? Theme.of(context).textTheme.headlineSmall),
    );
  }
}
