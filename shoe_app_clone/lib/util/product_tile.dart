// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String shoeName;
  final String shoeCategory;
  final int shoePrice;
  final String imagePath;
  final VoidCallback onTap;
  final VoidCallback onAddToCart;

  const ProductTile({
    super.key,
    required this.shoeName,
    required this.shoeCategory,
    required this.shoePrice,
    required this.imagePath,
    required this.onTap,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                width: 100,
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoeName,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          shoeCategory,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '\$',
                              style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              shoePrice.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
