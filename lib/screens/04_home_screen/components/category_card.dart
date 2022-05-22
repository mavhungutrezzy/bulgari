
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {

  final String imagePath;
  final String text;

  const Category({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      width: 70.0.w,
      height: 130.0.h,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(23.w),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffEBF0FF),
              ),
              shape: BoxShape.circle
          
            ),
            child: Image.asset(
              imagePath,
              width: 24.0.w,
              height: 24.0.h
            ),
          ),
          SizedBox(height: 8.0.h,),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 12.0.sp,
              color: Color(0xff9098B1)
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}