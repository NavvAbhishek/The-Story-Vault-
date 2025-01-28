import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final double price;
  final VoidCallback onDelete;

  const CartItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff023047), // Dark background
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 15), // Adds space between items
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Book Image
          Image.asset(
            imagePath,
            width: 90,
          ),
          const SizedBox(width: 10),

          // Title & Price
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFB703),
                  ),
                ),
                const SizedBox(height: 45),

                // Star Rating + Price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: List.generate(
                            4, // Change this value for dynamic rating
                            (index) => const Icon(
                              Icons.star,
                              color: Color(0xffFFB703),
                              size: 21,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Rs. ${price.toStringAsFixed(0)}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFB703),
                          ),
                        ),
                        const Text(
                          "Free shipping",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFB703),
                          ),
                        ),
                      ],
                    ),

                    // Delete Icon
                    IconButton(
                      onPressed: onDelete,
                      icon: const Icon(
                        Icons.delete,
                        color: Color(0xffFFB703),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
