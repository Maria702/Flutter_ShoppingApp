// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/home.dart';
import 'package:shopping_app/authen/login.dart';
import 'package:shopping_app/authen/signUp.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/clothes.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Center(
                                child: Text(
                              "***Welcome!***",
                              style: new TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade900,
                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.blue,
                                    offset: Offset(5.0, 5.0),
                                  ),
                                  Shadow(
                                    color: Colors.red,
                                    blurRadius: 10.0,
                                    offset: Offset(-5.0, 5.0),
                                  ),
                                ],
                              ),
                            )),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Center(
                                child: Text(
                              "We knows your choice! Our personalised app uses artificial intelligence to help you find exactly what you are looking for.",
                              style: new TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Login()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          child: Text(
                            "Login",
                            style: new TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.blue,
                                  offset: Offset(5.0, 5.0),
                                ),
                                Shadow(
                                  color: Colors.red,
                                  blurRadius: 10.0,
                                  offset: Offset(-5.0, 5.0),
                                ),
                              ],
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              decorationStyle: TextDecorationStyle.solid,
                              letterSpacing: -1.0,
                              wordSpacing: 5.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Register()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          child: Text(
                            "Sign Up",
                            style: new TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.blue,
                                  offset: Offset(5.0, 5.0),
                                ),
                                Shadow(
                                  color: Colors.red,
                                  blurRadius: 10.0,
                                  offset: Offset(-5.0, 5.0),
                                ),
                              ],
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              decorationStyle: TextDecorationStyle.solid,
                              letterSpacing: -1.0,
                              wordSpacing: 5.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomePage()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          child: Text(
                            "Go to Home Page",
                            style: new TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.blue,
                                  offset: Offset(5.0, 5.0),
                                ),
                                Shadow(
                                  color: Colors.red,
                                  blurRadius: 10.0,
                                  offset: Offset(-5.0, 5.0),
                                ),
                              ],
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                              decorationStyle: TextDecorationStyle.solid,
                              letterSpacing: -1.0,
                              wordSpacing: 5.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
