
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class MainText extends StatelessWidget {
  final String text;
  const MainText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: Color(0xff223263),
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      ),
      
    );
  }
}
