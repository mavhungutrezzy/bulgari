
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninSignup extends StatelessWidget {
  final String text;
  const SigninSignup({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xff40bfff),
        minimumSize: Size.fromHeight(57.0.h)
      ),
      onPressed: () {}, 
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          fontSize: 14.0.sp,
        )
      )
    );
  }
}

