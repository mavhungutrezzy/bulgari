


// ignore_for_file: prefer_const_constructors

import 'package:bulgari/screens/06_product_details_screen/product_details_screen.dart';
import 'package:bulgari/screens/5_promotion_screen/promotion_screen.dart';
import 'package:flutter/material.dart';

import 'screens/04_home_screen/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  PromotionScreen.routeName: (context) => PromotionScreen(),
  ProductDetailScreen.routeName: (context) => ProductDetailScreen()
};