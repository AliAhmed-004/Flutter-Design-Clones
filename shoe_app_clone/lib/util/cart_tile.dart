// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:show_app_clone/modules/cart_provider.dart';

class CartTile extends StatelessWidget {
  final String shoeTitle;
  final int quantity;
  final String status;
  final String imagePath;

  const CartTile({
    super.key,
    required this.shoeTitle,
    required this.quantity,
    required this.status,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurStyle: BlurStyle.outer,
              blurRadius: 12,
              spreadRadius: 8,
            )
          ],
          borderRadius: BorderRadius.circular(12),
        ),

        // Order Details
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoeTitle,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Quantity: $quantity',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.grey[700],
                      ),
                    ),
                    Text(
                      'Status: $status',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),

                // Order Image
                Image.asset(
                  'assets/$imagePath',
                  width: 200,
                )
              ],
            ),

            SizedBox(
              height: 25,
            ),

            // Remove Order Button
            ElevatedButton.icon(
              onPressed: () {
                // Access the provider and call removeItem
                final cartProvider =
                    Provider.of<CartProvider>(context, listen: false);
                cartProvider.removeItem(shoeTitle);
                // Show a snackbar when an item is removed
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$shoeTitle removed from the cart'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              icon: Icon(Icons.delete),
              label: Text('Remove'),
            ),
          ],
        ),
      ),
    );
  }
}
