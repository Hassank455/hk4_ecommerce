import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hk4_ecommerce/core/helpers/extensions.dart';
import 'package:hk4_ecommerce/core/value/app_strings.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: AppStrings.alreadyHaveAccount,
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: AppStrings.login,
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}