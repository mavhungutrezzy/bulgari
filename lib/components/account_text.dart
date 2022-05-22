
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/03_signup_screen/signup_screen.dart';

class AccountText extends StatelessWidget {
  
  final String accountText;
  final String text;

  const AccountText({
    Key? key,
    required this.text,
    required this.accountText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          accountText,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.normal,
            color: Color(0xff9098B1),
            fontSize: 13.0.sp
          )
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (_) => SignupScreen())
          );
          },
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              color: Color(0xff40bfff),
              fontSize: 13.0.sp
            )
          ),
        )
      ],
    );
  }
}
