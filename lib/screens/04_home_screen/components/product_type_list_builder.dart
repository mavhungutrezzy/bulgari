
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/category_model.dart';
import 'category_card.dart';

class ProductType extends StatelessWidget {
  const ProductType({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.w),
      child: SizedBox(
        height: 120.h,
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
    );
  }
}
