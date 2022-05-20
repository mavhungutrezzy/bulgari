
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Email extends StatelessWidget {
  const Email({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
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
      ),
      style: TextStyle(
        color: Color(0xFF9098B1)
      ),
    );
  }
}