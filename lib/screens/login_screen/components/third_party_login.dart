
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdPartyLogin extends StatelessWidget {

  final String logoPath;
  final String text;

  const ThirdPartyLogin({
    Key? key,
    required this.logoPath,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              logoPath,
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
              text,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 14.0.sp,
                color: Color(0xff9098B1)
              )
            ),
          )
        ]
      ),
    );
  }
}
