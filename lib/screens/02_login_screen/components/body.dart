// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../../components/barrel.dart';
import 'third_party_login.dart';


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
                  top: 68.0.h,
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
              MainText(text: 'Welcome to Bulgari'),
              SizedBox(height: 8.0.h,),
              SmallText(text: 'Sign in to continue'),
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
                        Email(),
                        SizedBox(height: 8.0.h),
                        Password(hintText: 'Password'),
                        SizedBox(height: 16.0.h),
                        SigninSignup(text: 'Sign in'),
                        SizedBox(height: 21.0.h,),
                        orText(),
                        SizedBox(height: 16.0.h,),
                        ThirdPartyLogin(logoPath: 'assets/icons/google.png', text: 'Login with Google'),
                        SizedBox(height: 8.0.h,),
                        ThirdPartyLogin(logoPath: 'assets/icons/facebook.png', text: 'Login with Facebook'),
                        SizedBox(height: 16.0.h,),
                        TextButton(
                          onPressed: () {}, 
                          child: Text(
                            'Forgot Password?'
                          )
                        ),
                        SizedBox(height: 8.0.h,),
                        AccountText(accountText: 'Dont have a account? ',text: 'Register')
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

  Text orText() {
    return Text(
      'OR',
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        color: Color(0xff9098B1),
        fontSize: 13.0.sp
      )
    );
  }
}


