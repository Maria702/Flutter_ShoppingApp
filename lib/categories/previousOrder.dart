// ignore_for_file: use_key_in_widget_constructors, unnecessary_null_comparison, file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/home.dart';

class PreviousOrder extends StatefulWidget {
  @override
  _PreviousOrderState createState() => _PreviousOrderState();
}

class _PreviousOrderState extends State<PreviousOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Previous Detail"),
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
          child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.pink.shade100,
                      size: 50,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Oppss!",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.pink.shade100,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Center(
              child: Column(
                children: [
                  Text(
                    "There is No Previous Order!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
