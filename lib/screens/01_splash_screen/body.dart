// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../02_login_screen/login_screen.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    Timer(const Duration(seconds: 10), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => LoginScreen()),
      );
    });

    return Container(
      color: const Color(0xff40bfff),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_icon_white.png'
            ),
            spinkit
          ]
        )
      )
    );
  }
}

const spinkit = SpinKitThreeBounce(
  color: Colors.white,
  size: 20.0,
);