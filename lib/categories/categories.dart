// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:shopping_app/categories/cart.dart';
import 'package:shopping_app/categories/electronic.dart';

import 'bagAndShoe.dart';
import 'clothes.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Electronics",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.pink.shade600),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ElectScreen()));
                        },
                        child: Text(
                          "See More",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 5,
                              color: Colors.pink.shade600),
                        )),
                  ),
                ],
              ),
            ),

            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          color: Colors.black,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.asset("assets/mob3.png",
                                    width: 200, height: 200, fit: BoxFit.cover),
                              ),
                              Text(
                                " i12 Pro Smartphone 16GB+512GB 6.7 inch Mobile Phones Cellphones 16+32MP Dual Card Smart Phone|Phone Case & Covers",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                              ),
                              SizedBox(height: 8),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            "\$ 190",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            CartScreen()));
                                              },
                                              icon: Icon(Icons.shopping_cart,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          color: Colors.black,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/mob2.jpg",
                                  width: 200, height: 200, fit: BoxFit.cover),
                              Text(
                                "New Cellphone i13 Pro Max 6.7 Inch U Screen 4G 5G Smartphone 1GB+8GB Celular Mobile Phone Celulares Android 11 Cheap Mobiles",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                              ),
                              SizedBox(height: 8),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            "\$ 190",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ClothesScreen()));
                                              },
                                              icon: Icon(Icons.shopping_cart,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // *************************2*************
            // Women's Fashion

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        " Clothes ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.pink.shade600),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ClothesScreen()));
                          },
                          child: Text(
                            "See More",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 5,
                                color: Colors.pink.shade600),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          color: Colors.black,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/clothes1.jpg",
                                  width: 200, height: 200, fit: BoxFit.cover),
                              Text(
                                " Stylish Party Dress for Women",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                              ),
                              SizedBox(height: 8),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            "\$ 190",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            CartScreen()));
                                              },
                                              icon: Icon(Icons.shopping_cart,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          color: Colors.black,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/clothes2.jpg",
                                  width: 200, height: 200, fit: BoxFit.cover),
                              Text(
                                "Zainab Hassan Women Suits",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                              ),
                              SizedBox(height: 8),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            "\$ 190",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            CartScreen()));
                                              },
                                              icon: Icon(Icons.shopping_cart,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // *************bag and shoes**************

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Bags & Shoes",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.pink.shade600),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => BagShoeScreen()));
                          },
                          child: Text(
                            "See More",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 5,
                                color: Colors.pink.shade600),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          color: Colors.black,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/bag1.png",
                                  width: 200, height: 200, fit: BoxFit.cover),
                              Text(
                                "Portable new insulated lunch box tote bag insulated food picnic lunch box bag lunch bag dinner container school food storage bag",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                              ),
                              SizedBox(height: 8),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            "\$ 190",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            CartScreen()));
                                              },
                                              icon: Icon(Icons.shopping_cart,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          color: Colors.black,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/shoes.png",
                                  width: 200, height: 200, fit: BoxFit.cover),
                              Text(
                                  "Men Casual Shoes Breathable Outdoor Sneakers Lightweight Walking Shoes Autumn Spring Men Loafers Slip On Dad Shoes Size 39-48",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  maxLines: 2),
                              SizedBox(height: 8),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Text(
                                            "\$ 190",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            CartScreen()));
                                              },
                                              icon: Icon(Icons.shopping_cart,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // *************************end*************
          ],
        ),
      ),
    );
  }
}
