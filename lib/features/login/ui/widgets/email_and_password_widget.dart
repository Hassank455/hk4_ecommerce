import 'package:flutter/material.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/value/app_strings.dart';
import 'package:hk4_ecommerce/core/widgets/app_text_form_field.dart';

class EmailAndPasswordWidget extends StatelessWidget {
  const EmailAndPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
                  hintText: AppStrings.email,
                  validator: (value) {},
                ),
                verticalSpace(AppSize.s20),
                AppTextFormField(
                  isObscureText: true,
                  hintText: AppStrings.password,
                  validator: (value) {},
                ),
      ],
    );
  }
}