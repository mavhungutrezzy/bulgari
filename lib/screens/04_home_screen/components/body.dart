// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/barrel.dart';
import 'barrel.dart';


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
                  HomeHeader(),
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
                    // Widget for Promotion Banners
                    PromotionFeaturedBanner(image: 'assets/images/Offer Banner (1).png'),
                    // TODO: Add slideshow image here
                    SizedBox(height: 24.0.h),
                    
                    //  Product category text
                    ProductCategoryText(
                      category: 'Category',
                      expandCategory: 'More Category'
                    ),
                    SizedBox(height: 12.0.h),
                  
                    // Product card horizontal list builder
                    ProductType(),

                    SizedBox(height: 24.0.h),

                    ProductCategoryText(
                      category: 'Flash Sale', 
                      expandCategory: 'See More'
                    ),

                    SizedBox(height: 12.0.h),

                    ProductListBuilder(),
                    
                    SizedBox(height: 12.0.h),

                    ProductCategoryText(
                      category: 'Mega Sale', 
                      expandCategory: 'See More'
                    ),

                    ProductListBuilder(),
                    
                    SizedBox(height: 9.0.h),

                    PromotionFeaturedBanner(image: 'assets/images/Recomended Product Banner (1).png'),
                    
                    SizedBox(height: 16.0.h),
                    
                  
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



