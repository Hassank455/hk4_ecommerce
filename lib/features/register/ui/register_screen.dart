import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/helpers/spacing.dart';
import 'package:hk4_ecommerce/core/theming/styles.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/value/app_strings.dart';
import 'package:hk4_ecommerce/core/widgets/app_text_button.dart';
import 'package:hk4_ecommerce/core/widgets/custom_image.dart';
import 'package:hk4_ecommerce/core/widgets/custom_text.dart';
import 'package:hk4_ecommerce/features/register/logic/cubit/register_cubit.dart';
import 'package:hk4_ecommerce/features/register/ui/widgets/already_have_account_text.dart';
import 'package:hk4_ecommerce/features/register/ui/widgets/register_bloc_listener.dart';
import 'package:hk4_ecommerce/features/register/ui/widgets/register_form_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: AppSize.s20.w, vertical: AppSize.s30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional.center,
                child: CustomPngImage(
                  imageName: 'splash',
                  height: AppSize.s200.h,
                  width: AppSize.s200.h,
                ),
              ),
              CustomText(
                text: AppStrings.signUpToAccount,
                style: TextStyles.font24BlackBold,
              ),
              verticalSpace(AppSize.s5),
              CustomText(
                text: AppStrings.looksLikeYouDon,
                style: TextStyles.font16GrayRegular,
              ),
              verticalSpace(AppSize.s30),
              const RegisterFormWidget(),
              verticalSpace(AppSize.s30),
              AppTextButton(
                buttonText: AppStrings.register,
                verticalPadding: AppSize.s10.h,
                textStyle: TextStyles.font16WhiteBold,
                onPressed: () {
                  context.read<RegisterCubit>().emitRegisterStates();
                },
              ),
              verticalSpace(AppSize.s20),
              const Align(
                alignment: AlignmentDirectional.center,
                child: AlreadyHaveAccountText(),
              ),
              const RegisterBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
