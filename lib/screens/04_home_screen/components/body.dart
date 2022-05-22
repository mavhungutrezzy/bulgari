// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:bulgari/models/category_model.dart';
import 'package:bulgari/screens/04_home_screen/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'category_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0.w,
                vertical: 16.0.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 263.0.w,
                    height: 50.0.sp,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_outlined),
                        prefixIconColor: Color(0xff40BFFF),
                        hintText: 'Search product',
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
                    ),
                  ),
                  Icon(Icons.favorite_outline, size: 24.w, color: Color(0xff9098b1) ),
                  Icon(Icons.notifications_outlined, size: 24.w, color: Color(0xff9098b1)),
                ],
              ),
            ),
            Divider(
              color: Color(0xFF9098B1)
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0.w),
                      child: Image.asset(
                        'assets/images/Offer Banner.png',
                        // width: 343.0.w,
                        // height: 206.0.h,
                      ),
                    ),
                    Text('to add state'),
                    SizedBox(height: 24.0.h),
                    Padding(
                      padding:EdgeInsets.only(
                        left: 16.0.w,
                        right: 16.0.w,
                        bottom: 12.0.h
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Category',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0.sp,
                              color: Color(0xff223263)
                            ),
                          ),
                          Text(
                            'More Category',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0.sp,
                              color: Color(0xff40BFFF)
                            ),
                          ),
                          
                        ]
                      ),
                    ),
                    SizedBox(height: 12.0.h),
                  
                    SizedBox(
                      height: 108.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: category.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Category(
                            imagePath: category[index].icon,
                            text: category[index].text,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 24.0.h),

                    Padding(
                      padding:EdgeInsets.only(
                        left: 16.0.w,
                        right: 16.0.w,
                        bottom: 12.0.h
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Flash Sale',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0.sp,
                              color: Color(0xff223263)
                            ),
                          ),
                          Text(
                            'See More',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0.sp,
                              color: Color(0xff40BFFF)
                            ),
                          ),
                          
                        ]
                      ),
                    ),

                    ProductCard(),
                  
                  ]
                )
              )
            )
          ]
        )
      )
    );
  }
}

