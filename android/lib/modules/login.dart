// ignore_for_file: prefer_const_constructors

import 'package:college/cubit/login/LoginCubit.dart';
import 'package:college/cubit/login/LoginState.dart';
import 'package:college/modules/home.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constant.dart';

class LoginScreen extends StatelessWidget {

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/FCI.png'),
                        defaultFormField(
                          controller: emailController,
                          validate: (value){
                            if(value.isEmpty){
                              return 'please enter your email address';
                            }
                          },
                          prefix: Icons.email_outlined,
                          type: TextInputType.emailAddress,
                          label: 'Email address',
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        defaultFormField(
                          controller: passwordController,
                          validate: (value){
                            if(value.isEmpty){
                              return 'please enter your password';
                            }
                          },
                          suffix: LoginCubit.get(context).suffix,
                          onSubmit: (value){
                            if(formKey.currentState!.validate()){
                              LoginCubit.get(context).userLogin(
                                  email: emailController.text,
                                  password: passwordController.text
                              );
                            }
                          },
                          isPassword: LoginCubit.get(context).isPassword,
                          suffixPressed: (){
                            LoginCubit.get(context).changePasswordVisibility();
                          },
                          prefix: Icons.vpn_key_outlined,
                          type: TextInputType.visiblePassword,
                          label: 'password',
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ConditionalBuilder(
                          condition: state is! LoginLoadingState,
                          builder: (context) => defaultButton(
                            function: (){
                              if(formKey.currentState!.validate()){
                                LoginCubit.get(context).userLogin(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                              }
                              navigateAndFinish(
                                context,
                                HomeScreen(),
                              );
                            },
                            text: 'Login',
                            isUpperCase: true,
                            radius: 20,
                          ),
                          fallback: (context) => Center(child: CircularProgressIndicator()),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
