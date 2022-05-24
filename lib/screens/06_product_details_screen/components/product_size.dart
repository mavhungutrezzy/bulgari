
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductSize extends StatelessWidget {

  final double size;

  const ProductSize({
    Key? key,
    required this.size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),

      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff9098B1)
          ),
          shape: BoxShape.circle,

        ),
        child: Padding(
          padding: EdgeInsets.all(5.0.w),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Text(
              size.toString(),
              style: GoogleFonts.poppins(
                color: Color(0xff223263),
                fontWeight: FontWeight.w700,
                fontSize: 14.0.sp
              ),
            ),
          ),
        ),
      ),
    );
  }
}
