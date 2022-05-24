// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';




class ProductCardPromotion extends StatefulWidget {

  final String image;
  final String title;
  final double price;

  ProductCardPromotion({
    Key? key,
    required this.image,
    required this.title,
    required this.price
  }) : super(key: key);

  @override
  State<ProductCardPromotion> createState() => _ProductCardPromotionState();
}

class _ProductCardPromotionState extends State<ProductCardPromotion> {

  
  
  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: EdgeInsets.symmetric(horizontal: 16.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: SizedBox(
        height: 270.0.h,
        width: 150.0.w,
        child: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  widget.image
                ),
              ),
              SizedBox(height: 8.0.h),
              SizedBox(
                height: 36.0.h,
                child: Text(
                  widget.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: Color(0xff223263)
                  ),
                )
              ),
              SizedBox(height: 10.0.h),
              SizedBox(
                height: 22.0.h,
                child: Text(
                  'R ${(widget.price - (widget.price * 0.24)).toStringAsFixed(2)}',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                    color: Color(0xff40BFFF)
                  ),
                )
              ),
              SizedBox(height: 8.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'R ${widget.price}',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      fontSize: 13.sp,
                      color: Color(0xff9098B1),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    '24% Off',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.sp,
                      color: Color(0xffFB7181)
                    ),
                  )
                ]
              )
            ]
          ),
        ),
      )
    );
  }
}