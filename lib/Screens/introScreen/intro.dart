

import 'dart:async';

import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
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
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context,'/home');
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: height*5,
          width: width*5,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/intro.jpeg"),fit: BoxFit.cover)
          ),
        )
      ),
    );
  }
}
