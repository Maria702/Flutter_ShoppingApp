// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'home.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("About Us"),
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
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "About Us!",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.pink.shade100,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/aboutMe.jpg"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "A fashion magazine labelled Maria.B as the ‘Coco Chanel’ of Pakistan - indeed the innovation and transformation triggered by entry into the fashion industry justifies the comparison. With a design philosophy rooted in constant change, improvement and originality, the designer has already become a force to be reckoned with. One of the brightest fashion stars of the industry, she remains committed to bringing the very best to her customers without fail. She says, “I have been given tremendous love by everybody but my vision goes far beyond that. I regard myself as an entrepreneur as someone who’s artistic ability can be portrayed in everything that I do. Fashion is a medium that can speak volumes, bridge the gap between cultures, allows human expression like nothing else can. I am lucky enough to be in love with my work, and I intend to use that privilege to the fullest”. The designer admits that amongst all of her muses, her family remains the most important.",
                      style: TextStyle(
                        height: 1.5,
                        letterSpacing: 1.0,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
