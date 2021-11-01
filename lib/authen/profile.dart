// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/screen.dart';
import 'package:shopping_app/home.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var data;
  FirebaseFirestore db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    // db
    final FirebaseAuth _auth = FirebaseAuth.instance;
    UserCredential user;
    var currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser != null) {
      print("uid" + currentUser.uid);
      print(currentUser.email);
      print(currentUser);
      print(currentUser.metadata.creationTime);
    }

//*****************Log OUT************** */
    Future<void> LogOut() async {
      if (FirebaseAuth.instance != null) {
        // wrong call in wrong place!
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => Screen()));
      }
      await _auth.signOut().then((value) => Navigator.of(context)
        ..pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Screen()),
            (route) => false));
      print("logout successfully!");
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text("LoggOut Successfully!"),
            );
          });
    }

    return Scaffold(
        appBar: AppBar(
            title: Text("Profile Detail"),
            backgroundColor: Colors.pink.shade100,
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                    icon: const Icon(Icons.arrow_back),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    });
              },
            )),
        body: Container(
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
                          ("${currentUser!.email}"),
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
                            "Time :",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          // "ok",
                          ("${currentUser.metadata.creationTime}"),
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
                            "Address :",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          " No address",
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
                            "Payment Details:",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          "No Details Found",
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
                  //  Logut

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: ElevatedButton(
                              onPressed: LogOut,
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.purple,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 20),
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              child: Text(
                                "LogOut",
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
              )
            ],
          ),
        ));
  }
}
