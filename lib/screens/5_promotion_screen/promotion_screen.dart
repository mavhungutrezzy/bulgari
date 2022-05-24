// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/body.dart';

class PromotionScreen extends StatelessWidget {

  static String routeName = "/promotion";


  const PromotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Body(),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios, color: Color(0xff9098B1)
        ),
      ),
      title: Text(
        'Super Flash Sale',
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          fontSize: 16.0.sp,
          color: Color(0xff223263)
        )
        
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.0.w),
          child: Icon(Icons.search_outlined, color: Color(0xff9098B1)),
        )
      ],
    );
  }
}