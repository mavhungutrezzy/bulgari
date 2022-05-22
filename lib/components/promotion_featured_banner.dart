
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PromotionFeaturedBanner extends StatelessWidget {

  final String image;

  const PromotionFeaturedBanner({
    Key? key,
    required this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Image.asset(
        image,
        width: 343.0.w,
      ),
    );
  }
}