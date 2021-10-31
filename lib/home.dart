// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_app/about.dart';
import 'package:shopping_app/categories/cart.dart';
import 'package:shopping_app/categories/categories.dart';
import 'package:shopping_app/policy.dart';
import 'package:shopping_app/categories/previousOrder.dart';
import 'package:shopping_app/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade100,
          title: Text('MyShopping'),
          actions: [
            Icon(Icons.search),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: 40,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfileScreen()));
                    },
                    icon: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        "assets/shopping.png",
                      ),
                    ),
                  ),
                )),

            // // ***********************PopupMenuItem**************************

            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("Add to Cart"),
                    value: 1,
                  ),
                ],
                onSelected: (int menu) {
                  if (menu == 1) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartScreen()));
                  } else if (menu == 2) {}
                },
              ),
            ),
          ],
        ),

// // *********************DRAWER****************************
        drawer: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.black,
            ),
            child: Drawer(
              child: ListView(
                children: <Widget>[
                  ListTile(
                      title: Text(
                        "Old Previous Order",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                PreviousOrder()));
                      }),
                  ListTile(
                      title: Text("Address",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => HomePage()));
                      }),
                  ListTile(
                      title: Text("About",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => AboutScreen()));
                      }),
                  ListTile(
                      title: Text("Polices",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => PolicyScreen()));
                      }),
                ],
              ),
            )),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [Categories()],
            ),
          ),
        ),
      ),
    );
  }
}
