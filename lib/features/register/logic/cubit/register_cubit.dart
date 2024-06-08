import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hk4_ecommerce/core/helpers/constants.dart';
import 'package:hk4_ecommerce/core/helpers/shared_pref_helper.dart';
import 'package:hk4_ecommerce/core/networking/dio_factory.dart';
import 'package:hk4_ecommerce/features/register/data/models/register_request_body.dart';
import 'package:hk4_ecommerce/features/register/data/repos/register_repo.dart';
import 'package:hk4_ecommerce/features/register/logic/cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitRegisterStates() async {
    if (formKey.currentState!.validate()) {
      emit(const RegisterState.registerLoading());
      final response = await _registerRepo.register(
        RegisterRequestBody(
          name: nameController.text,
          email: emailController.text,
          phone: phoneController.text,
          password: passwordController.text,
        ),
      );
      response.when(success: (registerResponse)async {
        if (registerResponse.status == false) {
          emit(RegisterState.registerError(
              error: registerResponse.message.toString()));
        } else {
          await saveUserToken(registerResponse.userData?.token ?? '');
          emit(RegisterState.registerSuccess(registerResponse));
        }
      }, failure: (error) {
        emit(RegisterState.registerError(
            error: error.apiErrorModel.message ?? ''));
      });
    }
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }

}
