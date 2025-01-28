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
        child: Column(
          children: [
            // Header (Fixed Margin)
            Container(
              margin: const EdgeInsets.only(
                  top: 20, left: 15, right: 15), // Only affects header
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xff023047),
                      size: 32,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "My Cart",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff023047),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 32),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Cart List (Expandable)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15), // Apply padding only to the list
                child: ListView(
                  children: [
                    CartItem(
                      imagePath: 'assets/images/promise.jpg',
                      title: "I Can Make This Promise",
                      price: 2500,
                      onDelete: () {
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
                ),
              ),
            ),

            // Bottom Fixed Container (Now Without Margin Issue)
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xff023047), // Dark Blue Background
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Prevent extra height issues
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Item Count
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Item Select",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "3", // Change dynamically if needed
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Total Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Total",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Rs. 8200", // Change dynamically
                        style: TextStyle(
                          color: Color(0xffFFB703),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  // Order Now Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        log("Order Placed");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFFB703), // Yellow
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Order now",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
