// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../components/promotion_featured_banner.dart';
import '../../../models/product_model.dart';
import 'product_card_promotion.dart';



class Body extends StatelessWidget {
  
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            SizedBox(height: 16.0.h),
            PromotionFeaturedBanner(image: 'assets/images/Offer Banner (1).png'),
            SizedBox(height: 16.0.h),
            


          ],
        )
      )
    );
  }
}