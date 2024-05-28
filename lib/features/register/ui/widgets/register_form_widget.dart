import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/core/helpers/app_regex.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/value/app_strings.dart';
import 'package:hk4_ecommerce/core/widgets/app_text_form_field.dart';
import 'package:hk4_ecommerce/features/register/logic/cubit/register_cubit.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<RegisterCubit>().nameController,
            hintText: AppStrings.name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid name';
              }
            },
            textInputType: TextInputType.name,
          ),
          verticalSpace(AppSize.s15),
          AppTextFormField(
            controller: context.read<RegisterCubit>().emailController,
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
          verticalSpace(AppSize.s15),
          AppTextFormField(
            controller: context.read<RegisterCubit>().phoneController,
            hintText: AppStrings.phone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid phone';
              }
            },
            textInputType: TextInputType.phone,
          ),
          verticalSpace(AppSize.s15),
          AppTextFormField(
            controller: context.read<RegisterCubit>().passwordController,
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
