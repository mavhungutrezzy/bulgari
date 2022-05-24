
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/product_model.dart';
import 'product_card.dart';

class ProductListBuilder extends StatelessWidget {
  const ProductListBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.w),
      child: SizedBox(
        height: 270.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: product.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductCard(
              image: product[index].image,
              title: product[index].title,
              price: product[index].price,
              
            );
          },
        ),
      ),
    );
  }
}
