// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens/01_splash_screen/splash_screen.dart';
import 'screens/04_home_screen/home_screen.dart';



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
        home: child,
      );
      },
      // child: SplashScreen(),
      child: HomeScreen(),
    );
  }
}
