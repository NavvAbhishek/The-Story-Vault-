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
      body: ListView(
        children: [
          const SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Harry Potter",
                style: TextStyle(
                    color: Color(0xff023047),
                    fontWeight: FontWeight.w700,
                    fontSize: 24),
              ),
              Text(
                "J.K. Rowling",
                style: TextStyle(color: Color(0xffFFB703), fontSize: 16),
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/images/harry-potter.png',
                width: 275,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Rs.4700",
                    style: TextStyle(color: Color(0xff023047), fontSize: 18),
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff023047),
                        foregroundColor: Color(0xffFFB703),
                        fixedSize: const Size(140, 50),
                      ),
                      child: Text(
                        "Add to cart",
                        style:
                            TextStyle(color: Color(0xffFFB703), fontSize: 16),
                      )) // Add some spacing between the text and button
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
