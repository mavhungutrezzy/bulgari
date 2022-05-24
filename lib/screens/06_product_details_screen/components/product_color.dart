
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/product_model.dart';

class ProductColor extends StatelessWidget {
  
  final Color color;

  const ProductColor({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.w),
      child: Container(
        padding: EdgeInsets.all(24.w),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: Colors.transparent,
          ),
          shape: BoxShape.circle
      
        ),
        child: Text(
          '',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 14.0.sp,
            color: Color(0xff223263),
          )
        ),
      ),
    );
  }
}