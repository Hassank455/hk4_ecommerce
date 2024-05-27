import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/app_regex.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/theming/styles.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/value/app_strings.dart';
import 'package:hk4_ecommerce/core/widgets/app_text_button.dart';
import 'package:hk4_ecommerce/core/widgets/app_text_form_field.dart';
import 'package:hk4_ecommerce/features/login/logic/cubit/login_cubit.dart';

class EmailAndPasswordWidget extends StatelessWidget {
  const EmailAndPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: AppStrings.email,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            textInputType: TextInputType.emailAddress,
          ),
          verticalSpace(AppSize.s20),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            isObscureText: true,
            textInputType: TextInputType.visiblePassword,
            hintText: AppStrings.password,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          
        ],
      ),
    );
  }
}
