// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: Body(),
    );
  }
}


class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 59.0.h,
        child: Row(
          children: [
            Expanded(child: Icon(Icons.home_outlined, color: Color(0xff40BFFF), size: 26.0.w)),
            Expanded(child: Icon(Icons.search_outlined, color: Color(0xff828382), size: 26.0.w)),
            Expanded(child: Icon(Icons.shopping_cart_outlined, color: Color(0xff828382), size: 26.0.w)),
            Expanded(child: Icon(Icons.sell_outlined, color: Color(0xff828382), size: 26.0.w)),
            Expanded(child: Icon(Icons.person_outlined, color: Color(0xff828382), size: 26.0.w)),
          ],
        ),
      )
    );
  }
}

