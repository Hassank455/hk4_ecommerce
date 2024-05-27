import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/theming/styles.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/value/app_strings.dart';
import 'package:hk4_ecommerce/core/widgets/app_text_button.dart';
import 'package:hk4_ecommerce/core/widgets/app_text_form_field.dart';
import 'package:hk4_ecommerce/core/widgets/custom_text.dart';
import 'package:hk4_ecommerce/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:hk4_ecommerce/features/login/ui/widgets/email_and_password_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSize.s20, vertical: AppSize.s50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(AppSize.s20),
                CustomText(
                  text: AppStrings.gladToSee,
                  style: TextStyles.font24BlackBold,
                ),
                verticalSpace(AppSize.s5),
                CustomText(
                  text: AppStrings.checkOutTheNew,
                  style: TextStyles.font16GrayRegular,
                ),
                verticalSpace(AppSize.s40),
                const EmailAndPasswordWidget(),
                verticalSpace(AppSize.s40),
                AppTextButton(
                    buttonText: AppStrings.login,
                    verticalPadding: AppSize.s10.h,
                    textStyle: TextStyles.font16WhiteBold,
                    onPressed: () {}),
                verticalSpace(AppSize.s40),
                const Align(
                  alignment: AlignmentDirectional.center,
                  child: DontHaveAccountText(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
