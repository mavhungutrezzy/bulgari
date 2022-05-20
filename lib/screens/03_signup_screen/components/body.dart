// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../components/barrel.dart';
import 'name_input.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 111.0.h,
                  left: 151.0.w,
                  right: 151.0.w,
                  bottom: 16.h,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/logo_Icon_blue.png'
                  )
                ),
              ),
              MainText(text: "Let's Get Started"),
              SizedBox(height: 8.0.h,),
              SmallText(text: 'Create a new account'),
              SizedBox(height: 28.0.h,),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0.w
                    ),
                    child: Column(
                      children: [
                        FullName(),
                        SizedBox(height: 8.0.h),
                        Email(),
                        SizedBox(height: 8.0.h),
                        Password(hintText: 'Password'),
                        SizedBox(height: 8.0.h),
                        Password(hintText: 'Confirm Password'),
                        SizedBox(height: 16.0.h,),
                        SigninSignup(text: 'Sign up'),
                        SizedBox(height: 8.0.h,),
                        AccountText(accountText: 'Have an account? ',text: 'Sign in')
                      ],
                    ),
                  ) 
                ),
              )
            ]
          )
        )
      ),
    );
  }
}