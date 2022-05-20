// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'body.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}