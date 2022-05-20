// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {

  final String text;

  const SmallText({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: Color(0xff9098b1),
        fontSize: 12.sp,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
