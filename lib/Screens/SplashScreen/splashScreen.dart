import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context,'/intro');
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Image.asset('assets/images/logoo.png',height: height*0.09+40,)),
    );
  }
}
