// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'routes.dart';
import 'screens/04_home_screen/home_screen.dart';
import 'screens/06_product_details_screen/product_details_screen.dart';
import 'screens/5_promotion_screen/promotion_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) { 
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: ProductDetailScreen.routeName,
        routes: routes
      );
      },
      // child: SplashScreen(),
      // child: HomeScreen(),
      // child: PromotionScreen()
      
    );
  }
}
