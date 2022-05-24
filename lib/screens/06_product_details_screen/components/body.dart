// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bulgari/screens/04_home_screen/components/barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/product_model.dart';
import 'product_color.dart';
import 'product_size.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            SizedBox(height: 16.0.h,),
            Image.asset(
              'assets/images/Club C  Revenge Shoes.jpg',
              width: 375.0.w,
              height: 238.0.h,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 40.0.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60.0.h,
                    width: 260.0.w,
                    child: Text(
                      'Nike Air Zoom Pegasus 36',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: Color(0xff223263)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 44.0.w),
                    child: SizedBox(child: Icon(Icons.favorite_outline_sharp, color: Color(0xff9098B1))),
                  )
                ]
              ),
            ),
            SizedBox(height: 8.0.h),
            Padding(
              padding: EdgeInsets.only(left: 16.0.w),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Color(0xffEBF0FF)),
                ],
              ),
            ),
            SizedBox(height: 16.0.h),
            Padding(
              padding: EdgeInsets.only(left: 16.0.w),
              child: Text(
                'R 500,02',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  color: Color(0xff40BFFF)
                )
              ),
            ),
            SizedBox(height: 24.0.h),
            Padding(
              padding: EdgeInsets.only(left: 16.0.w),
              child: Text(
                'Select Size',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: Color(0xff223263)
                )
              ),
            ),
            SizedBox(height: 12.0.h),
      
            SizedBox(
              height: 80.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: product[1].colors.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductSize(size: product[index].sizes[index]);
                },
              ),

            ),
            SizedBox(height: 24.0.h),
            Padding(
              padding: EdgeInsets.only(left: 16.0.w),
              child: Text(
                'Select Color',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: Color(0xff223263)
                )
              ),
            ),
            SizedBox(height: 12.0.h),
          
            SizedBox(
              height: 80.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: product[1].colors.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductColor(color: product[index].colors[index]);
                },
              ),

            ),
      
            // ProductColor(),
            SizedBox(height: 24.0.h),
            Padding(
              padding: EdgeInsets.only(left: 16.0.w),
              child: Text(
                'Specification',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: Color(0xff223263)
                )
              ),
            ),
            SizedBox(height: 16.0.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Text(
                product[1].description,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0.sp,
                  color: Color(0xff9098B1)
                )
              ),
            ),
            SizedBox(height: 24.0.h),
            ProductCategoryText(
              category: 'Review Product', 
              expandCategory: 'See More',
            ),
            SizedBox(height: 5.0.h),

            Padding(
              padding: EdgeInsets.only(left: 16.0.w),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Color(0xffEBF0FF)),
                  Text(' '),
                  Text(
                    '4.5 (5 Review)',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0.sp,
                      color: Color(0xff9098B1)
                    )
                  )
                ],
              ),
            ),
            SizedBox(height: 16.0.h),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: Container(
                     // padding: EdgeInsets.all(18.w),
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     image: DecorationImage(
                       fit: BoxFit.cover,
                       image: NetworkImage('https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg')
                    
                     )
                   )
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dwayne Johnson',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0.sp,
                        color: Color(0xff223263)
                      )
                    ),
                    SizedBox(height: 4.0.h,),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Color(0xffEBF0FF)),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 16.0.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Text(
                product[1].description,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0.sp,
                  color: Color(0xff9098B1)
                )
              ),
            ),
            SizedBox(height: 23.0.h),
            Padding(
              padding: EdgeInsets.only(left: 16.0.w),
              child: Text(
                'You Might Also Like',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: Color(0xff223263)
                )
              ),
            ),
            SizedBox(height: 12.0.h),
            ProductListBuilder(),
            SizedBox(height: 90.0.h),
          ],
        ),
      )
    );
  }
}
