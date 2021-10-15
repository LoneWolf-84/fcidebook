// ignore_for_file: file_names, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../constant.dart';
import 'login.dart';

class onBoardingScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
          child: Center(
            child: Container(
              child: Column(
                children: [
                  Image.asset('assets/images/FCI.png'),
                  Text(
                    'Welcome to FCID',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  FloatingActionButton(
                    onPressed: (){
                      navigateAndFinish(
                        context,
                        LoginScreen(),);
                    },
                    child: Icon(
                      Icons.navigate_next,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
