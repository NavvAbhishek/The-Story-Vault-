import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final String title;
  final String author;
  final String imagePath;
  final String price;
  final VoidCallback onAddToCart;

  const BookItem({
    super.key,
    required this.title,
    required this.author,
    required this.imagePath,
    required this.price,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xff023047),
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          author,
          style: TextStyle(color: Color(0xffFFB703), fontSize: 16),
        ),
        SizedBox(height: 10),
        Image.asset(
          imagePath,
          width: 275,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              price,
              style: TextStyle(color: Color(0xff023047), fontSize: 18),
            ),
            SizedBox(width: 65),
            ElevatedButton(
              onPressed: onAddToCart,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff023047),
                foregroundColor: Color(0xffFFB703),
                fixedSize: const Size(140, 50),
              ),
              child: Text(
                "Add to cart",
                style: TextStyle(color: Color(0xffFFB703), fontSize: 16),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30), // Spacing between books
      ],
    );
  }
}
