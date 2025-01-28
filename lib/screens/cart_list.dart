import 'dart:developer';

import 'package:code/widgets/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff023047),
                        size: 32,
                      )),
                  Expanded(
                    child: Text(
                      "My Cart",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff023047),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 32),
                ],
              ),
              SizedBox(height: 40),
              Expanded(
                  child: ListView(
                children: [
                  CartItem(
                    imagePath: 'assets/images/promise.jpg',
                    title: "I Can Make This Promise",
                    price: 2500,
                    onDelete: () {
                      // Handle delete action
                      log("Deleted: Five Things About Ava Andrews");
                    },
                  ),
                  CartItem(
                    imagePath: 'assets/images/roam.png',
                    title: "Where We Used To Roam",
                    price: 3500,
                    onDelete: () {
                      log("Deleted: One Jar of Magic");
                    },
                  ),
                  CartItem(
                    imagePath: 'assets/images/gravity.jpg',
                    title: "The Gravity Of Us",
                    price: 4700,
                    onDelete: () {
                      log("Deleted: Harry Potter");
                    },
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
