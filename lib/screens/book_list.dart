import 'package:flutter/material.dart';

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
    );
  }
}
