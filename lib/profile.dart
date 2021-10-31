// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                  child: Stack(
                alignment: Alignment.bottomCenter,
                overflow: Overflow.visible,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            // color: Colors.white
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/image.jpg"))),
                      ))
                    ],
                  ),
                  Positioned(
                      top: 100,
                      child: Container(
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/userImg.png"),
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: 6,
                            )),
                      )),
                ],
              )),
              Container(
                alignment: Alignment.bottomCenter,
                height: 150,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Email ID :",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      "ok",
                      // ("${currentUser!.email}"),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 2),
                        child: Icon(Icons.edit)),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Email ID :",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      "ok",
                      // ("${currentUser!.email}"),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 2),
                        child: Icon(Icons.edit)),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Email ID :",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      "ok",
                      // ("${currentUser!.email}"),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 2),
                        child: Icon(Icons.edit)),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Email ID :",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      "ok",
                      // ("${currentUser!.email}"),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 2),
                        child: Icon(Icons.edit)),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Email ID :",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      "ok",
                      // ("${currentUser!.email}"),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 2),
                        child: Icon(Icons.edit)),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Email ID :",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      "ok",
                      // ("${currentUser!.email}"),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 2),
                        child: Icon(Icons.edit)),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
