// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopping_app/categories/Screens/screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
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
          Colors.purple.shade400,
          Colors.pink.shade600,
        ],
      )),
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 250,
              height: 250,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                    radius: 90,
                    backgroundColor: Colors.yellow,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                        "assets/shopping.png",
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
