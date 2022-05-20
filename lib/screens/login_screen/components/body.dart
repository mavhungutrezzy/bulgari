// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


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
              Text(
                'Welcome to Bulgari',
                style: GoogleFonts.poppins(
                  color: Color(0xff223263),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
                
              ),
              SizedBox(height: 8.0.h,),
              Text(
                'Sign in to continue',
                style: GoogleFonts.poppins(
                  color: Color(0xff9098b1),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
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
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: 'Your Email',
                            hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 13.0.sp,
                              color: Color(0xff9098b1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffEBF0FF),
                              )
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(5)
                            )
                          )
                        ),
                        SizedBox(height: 8.0.h),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline),
                            hintText: 'Password',
                            hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 13.0.sp,
                              color: Color(0xff9098b1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffEBF0FF),
                              )
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(5)
                            )
                          )
                        ),
                        SizedBox(height: 16.0.h),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff40bfff),
                            minimumSize: Size.fromHeight(57.0.h)
                          ),
                          onPressed: () {}, 
                          child: Text(
                            'Sign in',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0.sp,
                            )
                          )
                        ),
                        SizedBox(height: 21.0.h,),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            
                            Text(
                              'OR',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff9098B1),
                                fontSize: 13.0.sp
                              )
                            ),

                          ],
                        ),
                        SizedBox(height: 16.0.h,),
                        Container(
                          width: double.infinity,
                          height: 60.0.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffEBF0FF),
                            ),
                            borderRadius: BorderRadius.circular(5),
                            // color: Colors.redAccent
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.0.w,
                                  vertical: 20.5.h
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/google.svg',
                                  height: 24.0.h,
                                  width: 24.0.w,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 20.h,
                                  horizontal: 55.0.w
                                ),
                                child: Text(
                                  'Login with Google',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0.sp,
                                    color: Color(0xff9098B1)
                                  )
                                ),
                              )
                            ]
                          ),
                        ),
                        SizedBox(height: 8.0.h,),

                        Container(
                          width: double.infinity,
                          height: 60.0.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffEBF0FF),
                            ),
                            borderRadius: BorderRadius.circular(5),
                            // color: Colors.redAccent
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.0.w,
                                  vertical: 20.5.h
                                ),
                                child: Image.asset(
                                  'assets/icons/facebook.png',
                                  height: 24.0.h,
                                  width: 24.0.w,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 20.h,
                                  horizontal: 55.0.w
                                ),
                                child: Text(
                                  'Login with Facebook',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0.sp,
                                    color: Color(0xff9098B1)
                                  )
                                ),
                              )
                            ]
                          ),
                        ),
                        SizedBox(height: 16.0.h,),
                        TextButton(
                          onPressed: () {}, 
                          child: Text(
                            'Forgot Password?'
                          )
                        ),
                        SizedBox(height: 8.0.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Dont have a account?',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.normal,
                                color: Color(0xff9098B1),
                                fontSize: 13.0.sp
                              )

                            ),
                            Text(
                              ' Register',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                color: Color(0xff40bfff),
                                fontSize: 13.0.sp
                              )
                            )
                            
                          ],
                        )
                        


                        
              
              
                        // )
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
