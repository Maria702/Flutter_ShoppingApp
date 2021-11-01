// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

import 'screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Screen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.white70,
          Colors.white70,
        ],
      )),
      child: Container(
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 250,
                height: 250,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    "assets/shopLogo.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
