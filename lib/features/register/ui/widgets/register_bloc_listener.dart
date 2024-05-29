import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hk4_ecommerce/core/value/app_size.dart';
import 'package:hk4_ecommerce/core/widgets/custom_text.dart';
import 'package:hk4_ecommerce/features/register/logic/cubit/register_cubit.dart';
import 'package:hk4_ecommerce/features/register/logic/cubit/register_state.dart';

import '../../../../core/theming/colors.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, current) =>
          current is RegisterLoading ||
          current is RegisterSuccess ||
          current is RegisterError,
      listener: (context, state) {
        state.whenOrNull(
          registerLoading: () {},
          registerSuccess: (registerResponse) {
            //  setupErrorState(context, 'signupResponse');
          },
          registerError: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: CustomText(
          text: error,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: ColorsManager.white),
        ),
        // width: 300,
        backgroundColor: ColorsManager.gray,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(right: 50.w, bottom: AppSize.s400, left: 50.w),
        elevation: 5,
        dismissDirection: DismissDirection.none,
        duration: const Duration(seconds: 3),
        action: null,
        onVisible: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
                bottomRight: Radius.circular(30.r),
                bottomLeft: Radius.circular(30.r))),
        // padding: EdgeInsets.all(15),
      ),
    );
  }
}
