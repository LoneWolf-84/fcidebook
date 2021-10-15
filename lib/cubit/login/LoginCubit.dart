// ignore_for_file: file_names, avoid_print

import 'package:college/cubit/login/LoginState.dart';
import 'package:college/network/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates>{
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);


  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void userLogin({
    required String email,
    required String password,
  }){
    emit(LoginLoadingState());

  }

  void changePasswordVisibility(){

    isPassword = !isPassword;

    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;

    emit(ChangePasswordVisibilityState());
  }
}