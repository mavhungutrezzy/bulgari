
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCategoryText extends StatelessWidget {

  final String category;
  final String expandCategory;

  const ProductCategoryText({
    Key? key,
    required this.category,
    required this.expandCategory
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(
        left: 16.0.w,
        right: 16.0.w,
        bottom: 12.0.h
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            category,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 15.0.sp,
              color: Color(0xff223263)
            ),
          ),
          Text(
            expandCategory,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 15.0.sp,
              color: Color(0xff40BFFF)
            ),
          ),
          
        ]
      ),
    );
  }
}