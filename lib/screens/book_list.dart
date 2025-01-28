import 'dart:developer';
import 'package:code/screens/cart.dart';
import 'package:code/widgets/book.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "The Story Vault",
          style: TextStyle(color: Color(0xffFFB703)),
        ),
        backgroundColor: Color(0xff023047),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Color(0xffFFB703),
                size: 40,
              ))
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 30),
          BookItem(
            title: "Harry Potter",
            author: "J.K. Rowling",
            imagePath: 'assets/images/harry-potter.png',
            price: "Rs.4700",
            onAddToCart: () {
              Get.to(const MyCart());
              log("Harry Potter added to cart!");
            },
          ),
          BookItem(
            title: "One Jar of Magic",
            author: "Corey Ann Haydu",
            imagePath: 'assets/images/one-jar.jpg',
            price: "Rs.3500",
            onAddToCart: () {
              Get.to(const MyCart());
              log("One Jar of Magic added to cart!");
            },
          ),
          BookItem(
            title: "Five Things About\n Ava Andrews",
            author: "Margaret Dilloway",
            imagePath: 'assets/images/five-things.png',
            price: "Rs.2500",
            onAddToCart: () {
              Get.to(const MyCart());
              log("Five Things About Ava Andrews added to cart!");
            },
          ),
        ],
      ),
    );
  }
}
